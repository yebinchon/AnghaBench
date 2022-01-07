
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct pic32_sport {int dummy; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int PIC32_UART_STA ;
 int PIC32_UART_STA_UTXBF ;
 int PIC32_UART_TX ;
 unsigned int PIC32_UART_TX_FIFO_DEPTH ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int pic32_uart_irqtxen (struct pic32_sport*,int ) ;
 int pic32_uart_readl (struct pic32_sport*,int ) ;
 int pic32_uart_stop_tx (struct uart_port*) ;
 int pic32_uart_writel (struct pic32_sport*,int ,unsigned int) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_do_tx(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int max_count = PIC32_UART_TX_FIFO_DEPTH;

 if (port->x_char) {
  pic32_uart_writel(sport, PIC32_UART_TX, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 if (uart_tx_stopped(port)) {
  pic32_uart_stop_tx(port);
  return;
 }

 if (uart_circ_empty(xmit))
  goto txq_empty;
 while (!(PIC32_UART_STA_UTXBF &
  pic32_uart_readl(sport, PIC32_UART_STA))) {
  unsigned int c = xmit->buf[xmit->tail];

  pic32_uart_writel(sport, PIC32_UART_TX, c);

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
  if (--max_count == 0)
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  goto txq_empty;

 return;

txq_empty:
 pic32_uart_irqtxen(sport, 0);
}
