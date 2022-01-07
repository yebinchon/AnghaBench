
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int membase; int irq; int lock; int mapbase; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSUART_IIR (int ) ;
 int LPC32XX_HSUART_RATE (int ) ;
 int LPC32XX_HSU_BRK_INT ;
 int LPC32XX_HSU_ERR_INT_EN ;
 int LPC32XX_HSU_FE_INT ;
 int LPC32XX_HSU_OFFSET (int) ;
 int LPC32XX_HSU_RX_INT_EN ;
 int LPC32XX_HSU_RX_OE_INT ;
 int LPC32XX_HSU_RX_TL32B ;
 int LPC32XX_HSU_TMO_INACT_4B ;
 int LPC32XX_HSU_TX_INT ;
 int LPC32XX_HSU_TX_TL8B ;
 int MODNAME ;
 int __serial_uart_flush (struct uart_port*) ;
 int lpc32xx_loopback_set (int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int serial_lpc32xx_interrupt ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int serial_lpc32xx_startup(struct uart_port *port)
{
 int retval;
 unsigned long flags;
 u32 tmp;

 spin_lock_irqsave(&port->lock, flags);

 __serial_uart_flush(port);

 writel((LPC32XX_HSU_TX_INT | LPC32XX_HSU_FE_INT |
  LPC32XX_HSU_BRK_INT | LPC32XX_HSU_RX_OE_INT),
        LPC32XX_HSUART_IIR(port->membase));

 writel(0xFF, LPC32XX_HSUART_RATE(port->membase));





 tmp = LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
  LPC32XX_HSU_OFFSET(20) | LPC32XX_HSU_TMO_INACT_4B;
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));

 lpc32xx_loopback_set(port->mapbase, 0);

 spin_unlock_irqrestore(&port->lock, flags);

 retval = request_irq(port->irq, serial_lpc32xx_interrupt,
        0, MODNAME, port);
 if (!retval)
  writel((tmp | LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN),
         LPC32XX_HSUART_CTRL(port->membase));

 return retval;
}
