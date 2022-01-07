
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_pci_device {int irqlock; TYPE_1__* ctx; TYPE_2__* pdev; int pci_2_3; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int masked; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int disable_irq_nosync (int ) ;
 scalar_t__ pci_check_and_mask_intx (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfio_send_intx_eventfd (struct vfio_pci_device*,int *) ;

__attribute__((used)) static irqreturn_t vfio_intx_handler(int irq, void *dev_id)
{
 struct vfio_pci_device *vdev = dev_id;
 unsigned long flags;
 int ret = IRQ_NONE;

 spin_lock_irqsave(&vdev->irqlock, flags);

 if (!vdev->pci_2_3) {
  disable_irq_nosync(vdev->pdev->irq);
  vdev->ctx[0].masked = 1;
  ret = IRQ_HANDLED;
 } else if (!vdev->ctx[0].masked &&
     pci_check_and_mask_intx(vdev->pdev)) {
  vdev->ctx[0].masked = 1;
  ret = IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&vdev->irqlock, flags);

 if (ret == IRQ_HANDLED)
  vfio_send_intx_eventfd(vdev, ((void*)0));

 return ret;
}
