import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text("Answer Is Here",
          style:TextStyle(
            color:Colors.white,
            fontWeight:FontWeight.bold
          )
          ),
          backgroundColor:Colors.cyan[900],
        ),
        backgroundColor:Colors.cyanAccent[700],
        body:MyApp()
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {


    return Container(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Think Of Your Question And...",
            style:TextStyle(
              fontSize:30.0,
              fontWeight:FontWeight.bold
            )
            ),
            Text("Click The Button",
                style:TextStyle(
                    fontSize:30.0,
                    fontWeight:FontWeight.bold
                )
            ),
            Expanded(
              child:Image.asset('images/ball$ballNumber.png')
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: TextButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStatePropertyAll(Colors.cyan[900])
                ),
                  onPressed: (){
                    setState((){
                        ballNumber=Random().nextInt(5)+1;
                    });
                  },
                  child: Text("THE BUTTON",
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  )
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
