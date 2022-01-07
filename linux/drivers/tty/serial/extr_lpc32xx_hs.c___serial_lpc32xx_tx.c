
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {int tx; } ;
struct uart_port {int membase; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSUART_FIFO (int ) ;
 int LPC32XX_HSUART_LEVEL (int ) ;
 unsigned int LPC32XX_HSU_TX_INT_EN ;
 int LPC32XX_HSU_TX_LEV (unsigned int) ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 unsigned int readl (int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void __serial_lpc32xx_tx(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int tmp;

 if (port->x_char) {
  writel((u32)port->x_char, LPC32XX_HSUART_FIFO(port->membase));
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(port))
  goto exit_tx;


 while (LPC32XX_HSU_TX_LEV(readl(
  LPC32XX_HSUART_LEVEL(port->membase))) < 64) {
  writel((u32) xmit->buf[xmit->tail],
         LPC32XX_HSUART_FIFO(port->membase));
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

exit_tx:
 if (uart_circ_empty(xmit)) {
  tmp = readl(LPC32XX_HSUART_CTRL(port->membase));
  tmp &= ~LPC32XX_HSU_TX_INT_EN;
  writel(tmp, LPC32XX_HSUART_CTRL(port->membase));
 }
}
