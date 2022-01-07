
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int irq; int lock; int mapbase; int membase; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSU_OFFSET (int) ;
 int LPC32XX_HSU_RX_TL32B ;
 int LPC32XX_HSU_TMO_INACT_4B ;
 int LPC32XX_HSU_TX_TL8B ;
 int free_irq (int ,struct uart_port*) ;
 int lpc32xx_loopback_set (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void serial_lpc32xx_shutdown(struct uart_port *port)
{
 u32 tmp;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 tmp = LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
  LPC32XX_HSU_OFFSET(20) | LPC32XX_HSU_TMO_INACT_4B;
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));

 lpc32xx_loopback_set(port->mapbase, 1);

 spin_unlock_irqrestore(&port->lock, flags);

 free_irq(port->irq, port);
}
