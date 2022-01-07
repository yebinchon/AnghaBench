
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* callback ) (TYPE_1__*) ;} ;
struct vring_virtqueue {TYPE_1__ vq; int broken; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int more_used (struct vring_virtqueue*) ;
 int pr_debug (char*,struct vring_virtqueue*,...) ;
 int stub1 (TYPE_1__*) ;
 struct vring_virtqueue* to_vvq (void*) ;
 scalar_t__ unlikely (int ) ;

irqreturn_t vring_interrupt(int irq, void *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 if (!more_used(vq)) {
  pr_debug("virtqueue interrupt with no work for %p\n", vq);
  return IRQ_NONE;
 }

 if (unlikely(vq->broken))
  return IRQ_HANDLED;

 pr_debug("virtqueue callback for %p (%p)\n", vq, vq->vq.callback);
 if (vq->vq.callback)
  vq->vq.callback(&vq->vq);

 return IRQ_HANDLED;
}
