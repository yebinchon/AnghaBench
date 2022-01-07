
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* startup ) (struct uart_port*) ;} ;


 int serial8250_do_startup (struct uart_port*) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static int serial8250_startup(struct uart_port *port)
{
 if (port->startup)
  return port->startup(port);
 return serial8250_do_startup(port);
}
