
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pdrv_genirq_platdata {int lock; int flags; } ;
struct uio_info {int irq; struct uio_pdrv_genirq_platdata* priv; } ;
typedef scalar_t__ s32 ;


 int UIO_IRQ_DISABLED ;
 scalar_t__ __test_and_clear_bit (int ,int *) ;
 int __test_and_set_bit (int ,int *) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int uio_pdrv_genirq_irqcontrol(struct uio_info *dev_info, s32 irq_on)
{
 struct uio_pdrv_genirq_platdata *priv = dev_info->priv;
 unsigned long flags;
 spin_lock_irqsave(&priv->lock, flags);
 if (irq_on) {
  if (__test_and_clear_bit(UIO_IRQ_DISABLED, &priv->flags))
   enable_irq(dev_info->irq);
 } else {
  if (!__test_and_set_bit(UIO_IRQ_DISABLED, &priv->flags))
   disable_irq_nosync(dev_info->irq);
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
