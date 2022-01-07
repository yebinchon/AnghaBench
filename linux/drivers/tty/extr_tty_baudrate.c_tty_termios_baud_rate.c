
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {unsigned int c_cflag; int c_ospeed; } ;
typedef int speed_t ;


 unsigned int BOTHER ;
 unsigned int CBAUD ;
 unsigned int CBAUDEX ;
 int * baud_table ;
 unsigned int n_baud_table ;

speed_t tty_termios_baud_rate(struct ktermios *termios)
{
 unsigned int cbaud;

 cbaud = termios->c_cflag & CBAUD;






 if (cbaud & CBAUDEX) {
  cbaud &= ~CBAUDEX;

  if (cbaud < 1 || cbaud + 15 > n_baud_table)
   termios->c_cflag &= ~CBAUDEX;
  else
   cbaud += 15;
 }
 return cbaud >= n_baud_table ? 0 : baud_table[cbaud];
}
