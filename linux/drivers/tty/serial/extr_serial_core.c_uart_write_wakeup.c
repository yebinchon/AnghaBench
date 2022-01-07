
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int port; } ;
struct uart_port {struct uart_state* state; } ;


 int BUG_ON (int) ;
 int tty_port_tty_wakeup (int *) ;

void uart_write_wakeup(struct uart_port *port)
{
 struct uart_state *state = port->state;




 BUG_ON(!state);
 tty_port_tty_wakeup(&state->port);
}
