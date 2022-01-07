
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* start_tx ) (struct uart_port*) ;} ;


 int stub1 (struct uart_port*) ;
 int uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static void __uart_start(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port = state->uart_port;

 if (port && !uart_tx_stopped(port))
  port->ops->start_tx(port);
}
