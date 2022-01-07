
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {unsigned char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int ASC_TXBUF ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int asc_disable_tx_interrupts (struct uart_port*) ;
 int asc_hw_txroom (struct uart_port*) ;
 int asc_out (struct uart_port*,int ,unsigned char) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void asc_transmit_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 int txroom;
 unsigned char c;

 txroom = asc_hw_txroom(port);

 if ((txroom != 0) && port->x_char) {
  c = port->x_char;
  port->x_char = 0;
  asc_out(port, ASC_TXBUF, c);
  port->icount.tx++;
  txroom = asc_hw_txroom(port);
 }

 if (uart_tx_stopped(port)) {




  asc_disable_tx_interrupts(port);
  return;
 }

 if (uart_circ_empty(xmit)) {
  asc_disable_tx_interrupts(port);
  return;
 }

 if (txroom == 0)
  return;

 do {
  c = xmit->buf[xmit->tail];
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  asc_out(port, ASC_TXBUF, c);
  port->icount.tx++;
  txroom--;
 } while ((txroom > 0) && (!uart_circ_empty(xmit)));

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  asc_disable_tx_interrupts(port);
}
