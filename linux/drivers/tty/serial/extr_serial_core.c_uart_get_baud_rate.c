
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upf_t ;
struct uart_port {int flags; } ;
struct ktermios {int c_cflag; } ;


 int CBAUD ;

 int UPF_SPD_MASK ;



 int WARN_ON (int) ;
 unsigned int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;

unsigned int
uart_get_baud_rate(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old, unsigned int min, unsigned int max)
{
 unsigned int try;
 unsigned int baud;
 unsigned int altbaud;
 int hung_up = 0;
 upf_t flags = port->flags & UPF_SPD_MASK;

 switch (flags) {
 case 131:
  altbaud = 57600;
  break;
 case 129:
  altbaud = 115200;
  break;
 case 130:
  altbaud = 230400;
  break;
 case 128:
  altbaud = 460800;
  break;
 default:
  altbaud = 38400;
  break;
 }

 for (try = 0; try < 2; try++) {
  baud = tty_termios_baud_rate(termios);





  if (try == 0 && baud == 38400)
   baud = altbaud;




  if (baud == 0) {
   hung_up = 1;
   baud = 9600;
  }

  if (baud >= min && baud <= max)
   return baud;





  termios->c_cflag &= ~CBAUD;
  if (old) {
   baud = tty_termios_baud_rate(old);
   if (!hung_up)
    tty_termios_encode_baud_rate(termios,
        baud, baud);
   old = ((void*)0);
   continue;
  }





  if (!hung_up) {
   if (baud <= min)
    tty_termios_encode_baud_rate(termios,
       min + 1, min + 1);
   else
    tty_termios_encode_baud_rate(termios,
       max - 1, max - 1);
  }
 }

 WARN_ON(1);
 return 0;
}
