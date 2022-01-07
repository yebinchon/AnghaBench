
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int (* get_divisor ) (struct uart_port*,unsigned int,unsigned int*) ;} ;


 unsigned int serial8250_do_get_divisor (struct uart_port*,unsigned int,unsigned int*) ;
 unsigned int stub1 (struct uart_port*,unsigned int,unsigned int*) ;

__attribute__((used)) static unsigned int serial8250_get_divisor(struct uart_port *port,
        unsigned int baud,
        unsigned int *frac)
{
 if (port->get_divisor)
  return port->get_divisor(port, baud, frac);

 return serial8250_do_get_divisor(port, baud, frac);
}
