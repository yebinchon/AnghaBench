
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_pci_irq_ctx {int dummy; } ;
struct vfio_pci_device {int num_ctx; int irq_type; TYPE_2__* ctx; TYPE_1__* pdev; scalar_t__ pci_2_3; int virq_disabled; } ;
struct TYPE_4__ {int masked; } ;
struct TYPE_3__ {int irq; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VFIO_PCI_INTX_IRQ_INDEX ;
 int is_irq_none (struct vfio_pci_device*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int pci_intx (TYPE_1__*,int) ;

__attribute__((used)) static int vfio_intx_enable(struct vfio_pci_device *vdev)
{
 if (!is_irq_none(vdev))
  return -EINVAL;

 if (!vdev->pdev->irq)
  return -ENODEV;

 vdev->ctx = kzalloc(sizeof(struct vfio_pci_irq_ctx), GFP_KERNEL);
 if (!vdev->ctx)
  return -ENOMEM;

 vdev->num_ctx = 1;







 vdev->ctx[0].masked = vdev->virq_disabled;
 if (vdev->pci_2_3)
  pci_intx(vdev->pdev, !vdev->ctx[0].masked);

 vdev->irq_type = VFIO_PCI_INTX_IRQ_INDEX;

 return 0;
}
