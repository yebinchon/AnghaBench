
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_8250_port {int tx_loadsz; int capabilities; struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int BOTH_EMPTY ;
 int UART_CAP_HFIFO ;
 int UART_CAP_MINI ;
 int UART_CAP_RPM ;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int __stop_tx (struct uart_8250_port*) ;
 int serial8250_stop_tx (struct uart_port*) ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

void serial8250_tx_chars(struct uart_8250_port *up)
{
 struct uart_port *port = &up->port;
 struct circ_buf *xmit = &port->state->xmit;
 int count;

 if (port->x_char) {
  serial_out(up, UART_TX, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }
 if (uart_tx_stopped(port)) {
  serial8250_stop_tx(port);
  return;
 }
 if (uart_circ_empty(xmit)) {
  __stop_tx(up);
  return;
 }

 count = up->tx_loadsz;
 do {
  serial_out(up, UART_TX, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
  if ((up->capabilities & UART_CAP_HFIFO) &&
      (serial_in(up, UART_LSR) & BOTH_EMPTY) != BOTH_EMPTY)
   break;

  if ((up->capabilities & UART_CAP_MINI) &&
      !(serial_in(up, UART_LSR) & UART_LSR_THRE))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);






 if (uart_circ_empty(xmit) && !(up->capabilities & UART_CAP_RPM))
  __stop_tx(up);
}
