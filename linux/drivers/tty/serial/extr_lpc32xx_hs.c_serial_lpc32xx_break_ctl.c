
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; int membase; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSU_BREAK ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

__attribute__((used)) static void serial_lpc32xx_break_ctl(struct uart_port *port,
         int break_state)
{
 unsigned long flags;
 u32 tmp;

 spin_lock_irqsave(&port->lock, flags);
 tmp = readl(LPC32XX_HSUART_CTRL(port->membase));
 if (break_state != 0)
  tmp |= LPC32XX_HSU_BREAK;
 else
  tmp &= ~LPC32XX_HSU_BREAK;
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));
 spin_unlock_irqrestore(&port->lock, flags);
}
