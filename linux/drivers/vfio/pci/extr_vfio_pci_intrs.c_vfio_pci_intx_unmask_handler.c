
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {int irqlock; TYPE_1__* ctx; scalar_t__ pci_2_3; int virq_disabled; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct TYPE_2__ {int masked; } ;


 int enable_irq (int ) ;
 int is_intx (struct vfio_pci_device*) ;
 int pci_check_and_unmask_intx (struct pci_dev*) ;
 int pci_intx (struct pci_dev*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vfio_pci_intx_unmask_handler(void *opaque, void *unused)
{
 struct vfio_pci_device *vdev = opaque;
 struct pci_dev *pdev = vdev->pdev;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&vdev->irqlock, flags);





 if (unlikely(!is_intx(vdev))) {
  if (vdev->pci_2_3)
   pci_intx(pdev, 1);
 } else if (vdev->ctx[0].masked && !vdev->virq_disabled) {





  if (vdev->pci_2_3) {
   if (!pci_check_and_unmask_intx(pdev))
    ret = 1;
  } else
   enable_irq(pdev->irq);

  vdev->ctx[0].masked = (ret > 0);
 }

 spin_unlock_irqrestore(&vdev->irqlock, flags);

 return ret;
}
