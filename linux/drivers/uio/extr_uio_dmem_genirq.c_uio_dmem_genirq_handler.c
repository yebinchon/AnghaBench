
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct uio_dmem_genirq_platdata* priv; } ;
struct uio_dmem_genirq_platdata {int flags; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t uio_dmem_genirq_handler(int irq, struct uio_info *dev_info)
{
 struct uio_dmem_genirq_platdata *priv = dev_info->priv;





 if (!test_and_set_bit(0, &priv->flags))
  disable_irq_nosync(irq);

 return IRQ_HANDLED;
}
