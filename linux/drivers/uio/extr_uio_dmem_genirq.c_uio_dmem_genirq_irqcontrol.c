
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {int irq; struct uio_dmem_genirq_platdata* priv; } ;
struct uio_dmem_genirq_platdata {int lock; int flags; } ;
typedef scalar_t__ s32 ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int uio_dmem_genirq_irqcontrol(struct uio_info *dev_info, s32 irq_on)
{
 struct uio_dmem_genirq_platdata *priv = dev_info->priv;
 unsigned long flags;
 spin_lock_irqsave(&priv->lock, flags);
 if (irq_on) {
  if (test_and_clear_bit(0, &priv->flags))
   enable_irq(dev_info->irq);
 } else {
  if (!test_and_set_bit(0, &priv->flags))
   disable_irq(dev_info->irq);
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
