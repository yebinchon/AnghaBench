
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int overrun; int brk; } ;
struct uart_port {int lock; int membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;


 int IRQ_HANDLED ;
 int LPC32XX_HSUART_IIR (int ) ;
 int LPC32XX_HSU_BRK_INT ;
 int LPC32XX_HSU_FE_INT ;
 int LPC32XX_HSU_RX_OE_INT ;
 int LPC32XX_HSU_RX_TIMEOUT_INT ;
 int LPC32XX_HSU_RX_TRIG_INT ;
 int LPC32XX_HSU_TX_INT ;
 int TTY_OVERRUN ;
 int __serial_lpc32xx_rx (struct uart_port*) ;
 int __serial_lpc32xx_tx (struct uart_port*) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;
 int tty_schedule_flip (struct tty_port*) ;
 int uart_handle_break (struct uart_port*) ;
 int uart_tx_stopped (struct uart_port*) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t serial_lpc32xx_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct tty_port *tport = &port->state->port;
 u32 status;

 spin_lock(&port->lock);


 status = readl(LPC32XX_HSUART_IIR(port->membase));

 if (status & LPC32XX_HSU_BRK_INT) {

  writel(LPC32XX_HSU_BRK_INT, LPC32XX_HSUART_IIR(port->membase));
  port->icount.brk++;
  uart_handle_break(port);
 }


 if (status & LPC32XX_HSU_FE_INT)
  writel(LPC32XX_HSU_FE_INT, LPC32XX_HSUART_IIR(port->membase));

 if (status & LPC32XX_HSU_RX_OE_INT) {

  writel(LPC32XX_HSU_RX_OE_INT,
         LPC32XX_HSUART_IIR(port->membase));
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
  tty_schedule_flip(tport);
 }


 if (status & (LPC32XX_HSU_RX_TIMEOUT_INT | LPC32XX_HSU_RX_TRIG_INT))
  __serial_lpc32xx_rx(port);


 if ((status & LPC32XX_HSU_TX_INT) && (!uart_tx_stopped(port))) {
  writel(LPC32XX_HSU_TX_INT, LPC32XX_HSUART_IIR(port->membase));
  __serial_lpc32xx_tx(port);
 }

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
