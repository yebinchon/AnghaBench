
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int c_ispeed; int c_ospeed; int c_cflag; } ;
typedef int speed_t ;


 int BOTHER ;
 int CBAUD ;
 int IBSHIFT ;
 int* baud_bits ;
 int* baud_table ;
 int n_baud_table ;
 int pr_warn_once (char*) ;

void tty_termios_encode_baud_rate(struct ktermios *termios,
      speed_t ibaud, speed_t obaud)
{
 int i = 0;
 int ifound = -1, ofound = -1;
 int iclose = ibaud/50, oclose = obaud/50;
 int ibinput = 0;

 if (obaud == 0)
  ibaud = 0;

 termios->c_ispeed = ibaud;
 termios->c_ospeed = obaud;
 termios->c_cflag &= ~CBAUD;
 do {
  if (obaud - oclose <= baud_table[i] &&
      obaud + oclose >= baud_table[i]) {
   termios->c_cflag |= baud_bits[i];
   ofound = i;
  }
  if (ibaud - iclose <= baud_table[i] &&
      ibaud + iclose >= baud_table[i]) {


   if (ofound == i && !ibinput)
    ifound = i;






  }
 } while (++i < n_baud_table);
 if (ifound == -1 || ofound == -1)
  pr_warn_once("tty: Unable to return correct speed data as your architecture needs updating.\n");

}
