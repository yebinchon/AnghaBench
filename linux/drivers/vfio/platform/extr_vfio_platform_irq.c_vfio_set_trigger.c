
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_irq {int hwirq; int masked; struct eventfd_ctx* trigger; int name; } ;
struct vfio_platform_device {int name; struct vfio_platform_irq* irqs; } ;
struct eventfd_ctx {int dummy; } ;
typedef int irq_handler_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int PTR_ERR (struct eventfd_ctx*) ;
 int enable_irq (int ) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 int free_irq (int ,struct vfio_platform_irq*) ;
 int irq_clear_status_flags (int ,int ) ;
 int irq_set_status_flags (int ,int ) ;
 int kasprintf (int ,char*,int ,int ) ;
 int kfree (int ) ;
 int request_irq (int ,int ,int ,int ,struct vfio_platform_irq*) ;

__attribute__((used)) static int vfio_set_trigger(struct vfio_platform_device *vdev, int index,
       int fd, irq_handler_t handler)
{
 struct vfio_platform_irq *irq = &vdev->irqs[index];
 struct eventfd_ctx *trigger;
 int ret;

 if (irq->trigger) {
  irq_clear_status_flags(irq->hwirq, IRQ_NOAUTOEN);
  free_irq(irq->hwirq, irq);
  kfree(irq->name);
  eventfd_ctx_put(irq->trigger);
  irq->trigger = ((void*)0);
 }

 if (fd < 0)
  return 0;

 irq->name = kasprintf(GFP_KERNEL, "vfio-irq[%d](%s)",
      irq->hwirq, vdev->name);
 if (!irq->name)
  return -ENOMEM;

 trigger = eventfd_ctx_fdget(fd);
 if (IS_ERR(trigger)) {
  kfree(irq->name);
  return PTR_ERR(trigger);
 }

 irq->trigger = trigger;

 irq_set_status_flags(irq->hwirq, IRQ_NOAUTOEN);
 ret = request_irq(irq->hwirq, handler, 0, irq->name, irq);
 if (ret) {
  kfree(irq->name);
  eventfd_ctx_put(trigger);
  irq->trigger = ((void*)0);
  return ret;
 }

 if (!irq->masked)
  enable_irq(irq->hwirq);

 return 0;
}
