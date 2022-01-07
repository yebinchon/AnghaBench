
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* pm ) (struct uart_port*,unsigned int,unsigned int) ;} ;


 int serial8250_do_pm (struct uart_port*,unsigned int,unsigned int) ;
 int stub1 (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void
serial8250_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 if (port->pm)
  port->pm(port, state, oldstate);
 else
  serial8250_do_pm(port, state, oldstate);
}
