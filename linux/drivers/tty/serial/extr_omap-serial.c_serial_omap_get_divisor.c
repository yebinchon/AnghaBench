
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; } ;


 int serial_omap_baud_is_mode16 (struct uart_port*,unsigned int) ;

__attribute__((used)) static unsigned int
serial_omap_get_divisor(struct uart_port *port, unsigned int baud)
{
 unsigned int mode;

 if (!serial_omap_baud_is_mode16(port, baud))
  mode = 13;
 else
  mode = 16;
 return port->uartclk/(mode * baud);
}
