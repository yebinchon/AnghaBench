
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* set_divisor ) (struct uart_port*,unsigned int,unsigned int,unsigned int) ;} ;


 int serial8250_do_set_divisor (struct uart_port*,unsigned int,unsigned int,unsigned int) ;
 int stub1 (struct uart_port*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void serial8250_set_divisor(struct uart_port *port, unsigned int baud,
       unsigned int quot, unsigned int quot_frac)
{
 if (port->set_divisor)
  port->set_divisor(port, baud, quot, quot_frac);
 else
  serial8250_do_set_divisor(port, baud, quot, quot_frac);
}
