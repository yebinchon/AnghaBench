
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {int irqlock; TYPE_1__* ctx; int pci_2_3; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct eventfd_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ masked; int name; struct eventfd_ctx* trigger; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long IRQF_SHARED ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int PTR_ERR (struct eventfd_ctx*) ;
 int disable_irq_nosync (int ) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 int free_irq (int ,struct vfio_pci_device*) ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int pci_name (struct pci_dev*) ;
 int request_irq (int ,int ,unsigned long,int ,struct vfio_pci_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfio_intx_handler ;

__attribute__((used)) static int vfio_intx_set_signal(struct vfio_pci_device *vdev, int fd)
{
 struct pci_dev *pdev = vdev->pdev;
 unsigned long irqflags = IRQF_SHARED;
 struct eventfd_ctx *trigger;
 unsigned long flags;
 int ret;

 if (vdev->ctx[0].trigger) {
  free_irq(pdev->irq, vdev);
  kfree(vdev->ctx[0].name);
  eventfd_ctx_put(vdev->ctx[0].trigger);
  vdev->ctx[0].trigger = ((void*)0);
 }

 if (fd < 0)
  return 0;

 vdev->ctx[0].name = kasprintf(GFP_KERNEL, "vfio-intx(%s)",
          pci_name(pdev));
 if (!vdev->ctx[0].name)
  return -ENOMEM;

 trigger = eventfd_ctx_fdget(fd);
 if (IS_ERR(trigger)) {
  kfree(vdev->ctx[0].name);
  return PTR_ERR(trigger);
 }

 vdev->ctx[0].trigger = trigger;

 if (!vdev->pci_2_3)
  irqflags = 0;

 ret = request_irq(pdev->irq, vfio_intx_handler,
     irqflags, vdev->ctx[0].name, vdev);
 if (ret) {
  vdev->ctx[0].trigger = ((void*)0);
  kfree(vdev->ctx[0].name);
  eventfd_ctx_put(trigger);
  return ret;
 }





 spin_lock_irqsave(&vdev->irqlock, flags);
 if (!vdev->pci_2_3 && vdev->ctx[0].masked)
  disable_irq_nosync(pdev->irq);
 spin_unlock_irqrestore(&vdev->irqlock, flags);

 return 0;
}
