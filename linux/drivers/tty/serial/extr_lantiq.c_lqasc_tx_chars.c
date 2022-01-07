
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; scalar_t__ x_char; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int ASCFSTAT_TXFREEMASK ;
 int ASCFSTAT_TXFREEOFF ;
 scalar_t__ LTQ_ASC_FSTAT ;
 scalar_t__ LTQ_ASC_TBUF ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int __raw_readl (scalar_t__) ;
 int lqasc_stop_tx (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
lqasc_tx_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 if (uart_tx_stopped(port)) {
  lqasc_stop_tx(port);
  return;
 }

 while (((__raw_readl(port->membase + LTQ_ASC_FSTAT) &
  ASCFSTAT_TXFREEMASK) >> ASCFSTAT_TXFREEOFF) != 0) {
  if (port->x_char) {
   writeb(port->x_char, port->membase + LTQ_ASC_TBUF);
   port->icount.tx++;
   port->x_char = 0;
   continue;
  }

  if (uart_circ_empty(xmit))
   break;

  writeb(port->state->xmit.buf[port->state->xmit.tail],
   port->membase + LTQ_ASC_TBUF);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
}
