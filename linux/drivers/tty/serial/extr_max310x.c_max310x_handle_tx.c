
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx; } ;
struct uart_port {unsigned int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {unsigned int tail; scalar_t__ buf; int head; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 unsigned int CIRC_CNT_TO_END (int ,unsigned int,int) ;
 int MAX310X_THR_REG ;
 int MAX310X_TXFIFOLVL_REG ;
 int UART_XMIT_SIZE ;
 unsigned int WAKEUP_CHARS ;
 scalar_t__ likely (unsigned int) ;
 int max310x_batch_write (struct uart_port*,scalar_t__,unsigned int) ;
 unsigned int max310x_port_read (struct uart_port*,int ) ;
 int max310x_port_write (struct uart_port*,int ,scalar_t__) ;
 unsigned int uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void max310x_handle_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int txlen, to_send, until_end;

 if (unlikely(port->x_char)) {
  max310x_port_write(port, MAX310X_THR_REG, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(port))
  return;


 to_send = uart_circ_chars_pending(xmit);
 until_end = CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);
 if (likely(to_send)) {

  txlen = max310x_port_read(port, MAX310X_TXFIFOLVL_REG);
  txlen = port->fifosize - txlen;
  to_send = (to_send > txlen) ? txlen : to_send;

  if (until_end < to_send) {


   max310x_batch_write(port, xmit->buf + xmit->tail, until_end);
   max310x_batch_write(port, xmit->buf, to_send - until_end);
  } else {
   max310x_batch_write(port, xmit->buf + xmit->tail, to_send);
  }


  port->icount.tx += to_send;
  xmit->tail = (xmit->tail + to_send) & (UART_XMIT_SIZE - 1);
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
}
