
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_irq {int masked; int lock; int hwirq; } ;


 int enable_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vfio_platform_unmask(struct vfio_platform_irq *irq_ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&irq_ctx->lock, flags);

 if (irq_ctx->masked) {
  enable_irq(irq_ctx->hwirq);
  irq_ctx->masked = 0;
 }

 spin_unlock_irqrestore(&irq_ctx->lock, flags);
}
