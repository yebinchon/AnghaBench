
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_irq {int trigger; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int eventfd_signal (int ,int) ;

__attribute__((used)) static irqreturn_t vfio_irq_handler(int irq, void *dev_id)
{
 struct vfio_platform_irq *irq_ctx = dev_id;

 eventfd_signal(irq_ctx->trigger, 1);

 return IRQ_HANDLED;
}
