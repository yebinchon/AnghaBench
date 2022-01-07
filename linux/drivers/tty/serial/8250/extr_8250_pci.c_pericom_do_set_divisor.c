
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int UART_LCR ;
 int serial8250_do_set_divisor (struct uart_port*,unsigned int,unsigned int,unsigned int) ;
 int serial_port_in (struct uart_port*,int) ;
 int serial_port_out (struct uart_port*,int,int) ;

__attribute__((used)) static void
pericom_do_set_divisor(struct uart_port *port, unsigned int baud,
          unsigned int quot, unsigned int quot_frac)
{
 int scr;
 int lcr;
 int actual_baud;
 int tolerance;

 for (scr = 5 ; scr <= 15 ; scr++) {
  actual_baud = 921600 * 16 / scr;
  tolerance = actual_baud / 50;

  if ((baud < actual_baud + tolerance) &&
   (baud > actual_baud - tolerance)) {

   lcr = serial_port_in(port, UART_LCR);
   serial_port_out(port, UART_LCR, lcr | 0x80);

   serial_port_out(port, UART_DLL, 1);
   serial_port_out(port, UART_DLM, 0);
   serial_port_out(port, 2, 16 - scr);
   serial_port_out(port, UART_LCR, lcr);
   return;
  } else if (baud > actual_baud) {
   break;
  }
 }
 serial8250_do_set_divisor(port, baud, quot, quot_frac);
}
