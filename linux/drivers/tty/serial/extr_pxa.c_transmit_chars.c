
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_pxa_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int UART_TX ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int serial_out (struct uart_pxa_port*,int ,scalar_t__) ;
 int serial_pxa_stop_tx (TYPE_3__*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void transmit_chars(struct uart_pxa_port *up)
{
 struct circ_buf *xmit = &up->port.state->xmit;
 int count;

 if (up->port.x_char) {
  serial_out(up, UART_TX, up->port.x_char);
  up->port.icount.tx++;
  up->port.x_char = 0;
  return;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(&up->port)) {
  serial_pxa_stop_tx(&up->port);
  return;
 }

 count = up->port.fifosize / 2;
 do {
  serial_out(up, UART_TX, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  up->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);


 if (uart_circ_empty(xmit))
  serial_pxa_stop_tx(&up->port);
}
