
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int SPRD_TXD ;
 int THLD_TX_EMPTY ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int serial_out (struct uart_port*,int ,scalar_t__) ;
 int sprd_stop_tx (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static inline void sprd_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 int count;

 if (port->x_char) {
  serial_out(port, SPRD_TXD, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  sprd_stop_tx(port);
  return;
 }

 count = THLD_TX_EMPTY;
 do {
  serial_out(port, SPRD_TXD, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  sprd_stop_tx(port);
}
