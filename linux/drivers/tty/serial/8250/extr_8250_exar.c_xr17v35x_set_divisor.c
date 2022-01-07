
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int serial8250_do_set_divisor (struct uart_port*,unsigned int,unsigned int,unsigned int) ;
 int serial_port_in (struct uart_port*,int) ;
 int serial_port_out (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void xr17v35x_set_divisor(struct uart_port *p, unsigned int baud,
     unsigned int quot, unsigned int quot_frac)
{
 serial8250_do_set_divisor(p, baud, quot, quot_frac);


 quot_frac |= serial_port_in(p, 0x2) & 0xf0;
 serial_port_out(p, 0x2, quot_frac);
}
