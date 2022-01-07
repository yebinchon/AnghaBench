
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier8250_priv {int atomic_write_lock; } ;
struct uart_port {scalar_t__ membase; struct uniphier8250_priv* private_data; } ;




 int UART_LCR_DLAB ;


 int UNIPHIER_UART_CHAR_FCR ;
 int UNIPHIER_UART_LCR_MCR ;
 int UNIPHIER_UART_REGSHIFT ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_serial_out(struct uart_port *p, int offset, int value)
{
 unsigned int valshift = 0;
 bool normal = 0;

 switch (offset) {
 case 128:

  valshift = 8;

 case 131:
  offset = UNIPHIER_UART_CHAR_FCR;
  break;
 case 130:
  valshift = 8;

  value &= ~UART_LCR_DLAB;

 case 129:
  offset = UNIPHIER_UART_LCR_MCR;
  break;
 default:
  offset <<= UNIPHIER_UART_REGSHIFT;
  normal = 1;
  break;
 }

 if (normal) {
  writel(value, p->membase + offset);
 } else {





  struct uniphier8250_priv *priv = p->private_data;
  unsigned long flags;
  u32 tmp;

  spin_lock_irqsave(&priv->atomic_write_lock, flags);
  tmp = readl(p->membase + offset);
  tmp &= ~(0xff << valshift);
  tmp |= value << valshift;
  writel(tmp, p->membase + offset);
  spin_unlock_irqrestore(&priv->atomic_write_lock, flags);
 }
}
