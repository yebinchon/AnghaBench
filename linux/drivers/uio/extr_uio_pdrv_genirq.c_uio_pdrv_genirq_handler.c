
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pdrv_genirq_platdata {int lock; int flags; } ;
struct uio_info {struct uio_pdrv_genirq_platdata* priv; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UIO_IRQ_DISABLED ;
 int __test_and_set_bit (int ,int *) ;
 int disable_irq_nosync (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t uio_pdrv_genirq_handler(int irq, struct uio_info *dev_info)
{
 struct uio_pdrv_genirq_platdata *priv = dev_info->priv;





 spin_lock(&priv->lock);
 if (!__test_and_set_bit(UIO_IRQ_DISABLED, &priv->flags))
  disable_irq_nosync(irq);
 spin_unlock(&priv->lock);

 return IRQ_HANDLED;
}
