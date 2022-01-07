
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {int tx; } ;
struct TYPE_7__ {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct ar933x_uart_port {TYPE_3__ port; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int AR933X_UART_DATA_REG ;
 unsigned int AR933X_UART_DATA_TX_CSR ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int ar933x_uart_putc (struct ar933x_uart_port*,scalar_t__) ;
 unsigned int ar933x_uart_read (struct ar933x_uart_port*,int ) ;
 int ar933x_uart_start_tx_interrupt (struct ar933x_uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void ar933x_uart_tx_chars(struct ar933x_uart_port *up)
{
 struct circ_buf *xmit = &up->port.state->xmit;
 int count;

 if (uart_tx_stopped(&up->port))
  return;

 count = up->port.fifosize;
 do {
  unsigned int rdata;

  rdata = ar933x_uart_read(up, AR933X_UART_DATA_REG);
  if ((rdata & AR933X_UART_DATA_TX_CSR) == 0)
   break;

  if (up->port.x_char) {
   ar933x_uart_putc(up, up->port.x_char);
   up->port.icount.tx++;
   up->port.x_char = 0;
   continue;
  }

  if (uart_circ_empty(xmit))
   break;

  ar933x_uart_putc(up, xmit->buf[xmit->tail]);

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  up->port.icount.tx++;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);

 if (!uart_circ_empty(xmit))
  ar933x_uart_start_tx_interrupt(up);
}
