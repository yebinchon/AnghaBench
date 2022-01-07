
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct rp2_uart_port {TYPE_3__ port; scalar_t__ base; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 scalar_t__ FIFO_SIZE ;
 scalar_t__ RP2_DATA_BYTE ;
 scalar_t__ RP2_TX_FIFO_COUNT ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 scalar_t__ readw (scalar_t__) ;
 int rp2_uart_stop_tx (TYPE_3__*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rp2_tx_chars(struct rp2_uart_port *up)
{
 u16 max_tx = FIFO_SIZE - readw(up->base + RP2_TX_FIFO_COUNT);
 struct circ_buf *xmit = &up->port.state->xmit;

 if (uart_tx_stopped(&up->port)) {
  rp2_uart_stop_tx(&up->port);
  return;
 }

 for (; max_tx != 0; max_tx--) {
  if (up->port.x_char) {
   writeb(up->port.x_char, up->base + RP2_DATA_BYTE);
   up->port.x_char = 0;
   up->port.icount.tx++;
   continue;
  }
  if (uart_circ_empty(xmit)) {
   rp2_uart_stop_tx(&up->port);
   break;
  }
  writeb(xmit->buf[xmit->tail], up->base + RP2_DATA_BYTE);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  up->port.icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);
}
