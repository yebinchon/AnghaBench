
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int (* set_ldisc ) (struct uart_port*,struct ktermios*) ;} ;
struct ktermios {int dummy; } ;


 int serial8250_do_set_ldisc (struct uart_port*,struct ktermios*) ;
 int stub1 (struct uart_port*,struct ktermios*) ;

__attribute__((used)) static void
serial8250_set_ldisc(struct uart_port *port, struct ktermios *termios)
{
 if (port->set_ldisc)
  port->set_ldisc(port, termios);
 else
  serial8250_do_set_ldisc(port, termios);
}
