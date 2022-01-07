
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int PRESL (unsigned char) ;
 unsigned char serial_in (struct uart_8250_port*,int) ;
 int serial_out (struct uart_8250_port*,int,unsigned char) ;

__attribute__((used)) static inline int ns16550a_goto_highspeed(struct uart_8250_port *up)
{
 unsigned char status;

 status = serial_in(up, 0x04);

 if (((status) & 0x30) == 0x10) {

  return 0;
 } else {
  status &= ~0xB0;
  status |= 0x10;
  serial_out(up, 0x04, status);
 }
 return 1;
}
