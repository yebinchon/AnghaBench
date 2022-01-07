
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_8250_port {int capabilities; int lcr; } ;


 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_NATSEMI ;
 int UART_OMAP_OSC_12M_SEL ;
 scalar_t__ is_omap1510_8250 (struct uart_8250_port*) ;
 int serial_dl_write (struct uart_8250_port*,unsigned int) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

void serial8250_do_set_divisor(struct uart_port *port, unsigned int baud,
          unsigned int quot, unsigned int quot_frac)
{
 struct uart_8250_port *up = up_to_u8250p(port);


 if (is_omap1510_8250(up)) {
  if (baud == 115200) {
   quot = 1;
   serial_port_out(port, UART_OMAP_OSC_12M_SEL, 1);
  } else
   serial_port_out(port, UART_OMAP_OSC_12M_SEL, 0);
 }





 if (up->capabilities & UART_NATSEMI)
  serial_port_out(port, UART_LCR, 0xe0);
 else
  serial_port_out(port, UART_LCR, up->lcr | UART_LCR_DLAB);

 serial_dl_write(up, quot);
}
