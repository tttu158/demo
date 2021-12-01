import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget{
  const MyHomePage({Key?key}): super(key:key);
  
  @override 
  _MyCustomSate createState()=>_MyCustomSate();
}
class _MyCustomSate  extends State<MyHomePage>{
int x=0;

 @override 
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: const Text('Advanced Counter'),
     ),
     body: SingleChildScrollView(
       child: Row (
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    setState(()=> x++)
                    
                  },
                  child: const Text(
                    '+1',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                    ),
                  ),
                ),
            Text(
              x.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x--;
                    });
                  },
                  child: const Text(
                    '-1',
                    style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    ),
                  ),
                  ),
                ),    

          ],
     ),),
   );
 }
}
