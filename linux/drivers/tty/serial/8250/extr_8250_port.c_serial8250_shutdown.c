
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* shutdown ) (struct uart_port*) ;} ;


 int serial8250_do_shutdown (struct uart_port*) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static void serial8250_shutdown(struct uart_port *port)
{
 if (port->shutdown)
  port->shutdown(port);
 else
  serial8250_do_shutdown(port);
}
