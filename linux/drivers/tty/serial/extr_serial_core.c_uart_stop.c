
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int dummy; } ;
struct uart_port {TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* stop_tx ) (struct uart_port*) ;} ;


 int stub1 (struct uart_port*) ;
 struct uart_port* uart_port_lock (struct uart_state*,unsigned long) ;
 int uart_port_unlock (struct uart_port*,unsigned long) ;

__attribute__((used)) static void uart_stop(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 unsigned long flags;

 port = uart_port_lock(state, flags);
 if (port)
  port->ops->stop_tx(port);
 uart_port_unlock(port, flags);
}
