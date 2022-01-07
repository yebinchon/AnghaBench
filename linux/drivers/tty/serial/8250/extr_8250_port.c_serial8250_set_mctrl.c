
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* set_mctrl ) (struct uart_port*,unsigned int) ;} ;


 int serial8250_do_set_mctrl (struct uart_port*,unsigned int) ;
 int stub1 (struct uart_port*,unsigned int) ;

__attribute__((used)) static void serial8250_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 if (port->set_mctrl)
  port->set_mctrl(port, mctrl);
 else
  serial8250_do_set_mctrl(port, mctrl);
}
