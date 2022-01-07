
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct TYPE_2__ {int xmit; } ;


 scalar_t__ uart_circ_empty (int *) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static bool lpuart_stopped_or_empty(struct uart_port *port)
{
 return uart_circ_empty(&port->state->xmit) || uart_tx_stopped(port);
}
