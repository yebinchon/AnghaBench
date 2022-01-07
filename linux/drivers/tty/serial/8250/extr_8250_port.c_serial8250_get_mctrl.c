
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int (* get_mctrl ) (struct uart_port*) ;} ;


 unsigned int serial8250_do_get_mctrl (struct uart_port*) ;
 unsigned int stub1 (struct uart_port*) ;

__attribute__((used)) static unsigned int serial8250_get_mctrl(struct uart_port *port)
{
 if (port->get_mctrl)
  return port->get_mctrl(port);
 return serial8250_do_get_mctrl(port);
}
