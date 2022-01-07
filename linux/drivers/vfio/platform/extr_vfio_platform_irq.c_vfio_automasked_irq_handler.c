
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_irq {int masked; int trigger; int lock; int hwirq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int disable_irq_nosync (int ) ;
 int eventfd_signal (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t vfio_automasked_irq_handler(int irq, void *dev_id)
{
 struct vfio_platform_irq *irq_ctx = dev_id;
 unsigned long flags;
 int ret = IRQ_NONE;

 spin_lock_irqsave(&irq_ctx->lock, flags);

 if (!irq_ctx->masked) {
  ret = IRQ_HANDLED;


  disable_irq_nosync(irq_ctx->hwirq);
  irq_ctx->masked = 1;
 }

 spin_unlock_irqrestore(&irq_ctx->lock, flags);

 if (ret == IRQ_HANDLED)
  eventfd_signal(irq_ctx->trigger, 1);

 return ret;
}
