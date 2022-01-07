
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int xmit; } ;
struct uart_port {int dummy; } ;
struct tty_struct {struct uart_state* driver_data; } ;


 int uart_circ_chars_free (int *) ;
 struct uart_port* uart_port_lock (struct uart_state*,unsigned long) ;
 int uart_port_unlock (struct uart_port*,unsigned long) ;

__attribute__((used)) static int uart_write_room(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 unsigned long flags;
 int ret;

 port = uart_port_lock(state, flags);
 ret = uart_circ_chars_free(&state->xmit);
 uart_port_unlock(port, flags);
 return ret;
}
