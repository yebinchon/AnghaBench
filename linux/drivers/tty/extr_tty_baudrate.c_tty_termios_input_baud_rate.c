
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {unsigned int c_cflag; int c_ispeed; } ;
typedef int speed_t ;


 unsigned int B0 ;
 unsigned int BOTHER ;
 unsigned int CBAUD ;
 unsigned int CBAUDEX ;
 unsigned int IBSHIFT ;
 int * baud_table ;
 unsigned int n_baud_table ;
 int tty_termios_baud_rate (struct ktermios*) ;

speed_t tty_termios_input_baud_rate(struct ktermios *termios)
{
 return tty_termios_baud_rate(termios);

}
