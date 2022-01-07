
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clps711x_chip {int lock; int pmpcon; } ;


 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
{

 u32 shift = (n + 1) * 4;
 unsigned long flags;
 u32 tmp;

 spin_lock_irqsave(&priv->lock, flags);

 tmp = readl(priv->pmpcon);
 tmp &= ~(0xf << shift);
 tmp |= v << shift;
 writel(tmp, priv->pmpcon);

 spin_unlock_irqrestore(&priv->lock, flags);
}
