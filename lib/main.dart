import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: MapContainer(),
    );
  }
}

class MapContainer extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return _myMapContainer();
  }
}
Widget _myMapContainer() {
return Scaffold(
   body: Center(
   child: Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.0),
      color: Colors.white,
    ),
      child: Column(
        children: <Widget>[
          Container(
      child: Text(
         'Название отеля',
         style: TextStyle(fontSize:20,color: Color(0xff353b47)),
       ),
            alignment: Alignment.topLeft,
          ),
     Expanded(
       flex: 2,
       child: Stack(
           alignment: Alignment.topCenter,
           children: <Widget>[
      Center(
        child: Container(
          margin: EdgeInsets.all(0),
          width: 250,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.0),
            image: DecorationImage(
                image: NetworkImage('https://cf.bstatic.com/xdata/images/hotel/max1280x900/251843487.jpg?k=2b874a9a20c8910192e17ce40ea8f12131019c26750f858d1149f365d28c5005&o=&hp=1'),
                fit: BoxFit.fill
          // слайдер изображений
        ),
      ),
     ),
      ),
             Positioned(
               top: 4,
               right:100 ,
               child: Icon(
                 Icons.star_border,
                 color: Color(0xfff7f8fa),
                 size: 35.0,
               ),
             ),
  ],
       ),
      ),
       Container(
         child: Row(
             children: <Widget>[
             Icon(Icons.map_outlined,color:  const Color(0xff7f8fa6),),
          Text(
            //местоположение отеля
            'улица Белинского 19б Херсон, 73000, Украина',
            style: TextStyle(fontSize:13,color: Color(0xff7f8fa6)),
          ),
             ],
         ),
         alignment: Alignment.topLeft,
       ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.monetization_on_outlined,color:  const Color(0xff7f8fa6),),
         Text(
            //минимальная цена за ночь в отеле
            'Минимальная цена: UAH 935',
            style: TextStyle(fontSize:13,color: Color(0xff7f8fa6)),
          ),
            ],
   ),
            alignment: Alignment.topLeft,
          ),
     Row(
       children: <Widget>[
         IconButton(
           icon: const Icon(Icons.alt_route),
           color:  const Color(0xff7f8fa6),
           onPressed: () {},
         ),
    IconButton(
    icon: const Icon(Icons.share),
      color:  const Color(0xff7f8fa6),
  onPressed: () {},
    ),
     ],

      ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize:15),
              primary: Color(0xff7f8fa6),
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondRoute()),
              // );
            },
            child: Text('Апарт-отель «Raziotel Ришельевский Херсон» с бесплатной частной парковкой расположен в Херсоне, Херсонская область. В номерах...\n',style: TextStyle(fontFamily: 'Montserrat'),
          ),
          ),
   ],
      ),
     alignment: Alignment.topLeft,
      width: 430,
      height: 370,
  
    ),
   ),
  );
}


