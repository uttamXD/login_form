import 'package:flutter/material.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final myLoginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () => print('Login buton is pressed'),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.supervised_user_circle,
                  size: 150,
                ),
                SizedBox(
                  height: 150,
                ),
                usernameField,
                SizedBox(
                  height: 10,
                ),
                passwordField,
                SizedBox(
                  height: 10,
                ),
                myLoginButon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
