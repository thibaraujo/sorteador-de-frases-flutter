import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeStateFul()
    ));
}

class HomeStateFul extends StatefulWidget {
    @override
    _HomeStateFulState createState() => _HomeStateFulState();
}

String defineTitle(List<String> titles) {
    Random random = new Random();
    return titles[random.nextInt(titles.length)];
}

class _HomeStateFulState extends State<HomeStateFul> {
    List<String> _frases = [
        "Frase de efeito número 1", 
        "Eu amo minha namorada Ana Flávia", 
        "Frase de efeito 02",
        "Frase de efeito 03",
        "Frase de efeito 04",
        "Frase de efeito 05",
        "Frase de efeito 06",
        "Frase de efeito 07",
        "Frase de efeito 08",
        "Frase de efeito 09",
        "Frase de efeito 10"
    ];
    String _title = "Frases do Dia";
    String _frase = "Clique abaixo para gerar uma frase!";

    @override
    Widget build(BuildContext context) {

        return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: Text(
                    _title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    ),
                ),
                backgroundColor: Colors.green,
            ),
            body: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                // decoration: BoxDecoration(
                //     border: Border.all(width: 3, color: Colors.green),
                // ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Image.asset(
                            "images/logo.png", 
                            fit: BoxFit.contain
                        ),
                        Text(
                            _frase,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: (){
                                setState(() {
                                    _frase = defineTitle(_frases);
                                });
                            }, 
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 209, 238, 210)),
                                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13.0),
                                        side: BorderSide(color: Colors.green)
                                    )
                                ),
                            ),
                            // botão com background
                            child: Text(
                                "Gerar Frase",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: const Color.fromARGB(255, 57, 109, 59),
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                ), 
                            )
                        ),
                    ]
                ),
            ),
            bottomNavigationBar: BottomAppBar(
                color: Colors.lightGreen,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Text(
                            "@thibaraujo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}