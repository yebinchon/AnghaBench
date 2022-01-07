
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int port; int xmit; } ;
struct uart_port {TYPE_1__* ops; } ;
struct tty_struct {int index; struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct uart_port*) ;} ;


 int WARN_ON (int) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct uart_port*) ;
 int tty_port_tty_wakeup (int *) ;
 int uart_circ_clear (int *) ;
 struct uart_port* uart_port_lock (struct uart_state*,unsigned long) ;
 int uart_port_unlock (struct uart_port*,unsigned long) ;

__attribute__((used)) static void uart_flush_buffer(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 unsigned long flags;





 if (!state) {
  WARN_ON(1);
  return;
 }

 pr_debug("uart_flush_buffer(%d) called\n", tty->index);

 port = uart_port_lock(state, flags);
 if (!port)
  return;
 uart_circ_clear(&state->xmit);
 if (port->ops->flush_buffer)
  port->ops->flush_buffer(port);
 uart_port_unlock(port, flags);
 tty_port_tty_wakeup(&state->port);
}
