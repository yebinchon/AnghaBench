
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct sercos3_priv* priv; } ;
struct sercos3_priv {int ier0_cache_lock; } ;
typedef scalar_t__ s32 ;


 int sercos3_disable_interrupts (struct uio_info*,struct sercos3_priv*) ;
 int sercos3_enable_interrupts (struct uio_info*,struct sercos3_priv*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sercos3_irqcontrol(struct uio_info *info, s32 irq_on)
{
 struct sercos3_priv *priv = info->priv;

 spin_lock_irq(&priv->ier0_cache_lock);
 if (irq_on)
  sercos3_enable_interrupts(info, priv);
 else
  sercos3_disable_interrupts(info, priv);
 spin_unlock_irq(&priv->ier0_cache_lock);

 return 0;
}
