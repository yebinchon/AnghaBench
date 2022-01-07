
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;


 int stm32_transmit_chars (struct uart_port*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;

__attribute__((used)) static void stm32_start_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;

 if (uart_circ_empty(xmit))
  return;

 stm32_transmit_chars(port);
}
