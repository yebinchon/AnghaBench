
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {int irqlock; TYPE_1__* ctx; scalar_t__ pci_2_3; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct TYPE_2__ {int masked; } ;


 int disable_irq_nosync (int ) ;
 int is_intx (struct vfio_pci_device*) ;
 int pci_intx (struct pci_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void vfio_pci_intx_mask(struct vfio_pci_device *vdev)
{
 struct pci_dev *pdev = vdev->pdev;
 unsigned long flags;

 spin_lock_irqsave(&vdev->irqlock, flags);







 if (unlikely(!is_intx(vdev))) {
  if (vdev->pci_2_3)
   pci_intx(pdev, 0);
 } else if (!vdev->ctx[0].masked) {




  if (vdev->pci_2_3)
   pci_intx(pdev, 0);
  else
   disable_irq_nosync(pdev->irq);

  vdev->ctx[0].masked = 1;
 }

 spin_unlock_irqrestore(&vdev->irqlock, flags);
}
