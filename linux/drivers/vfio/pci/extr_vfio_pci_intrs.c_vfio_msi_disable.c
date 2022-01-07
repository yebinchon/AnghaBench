
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {int num_ctx; TYPE_1__* ctx; int irq_type; scalar_t__ nointx; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int mask; int unmask; } ;


 int VFIO_PCI_NUM_IRQS ;
 int kfree (TYPE_1__*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_intx (struct pci_dev*,int ) ;
 int vfio_msi_set_block (struct vfio_pci_device*,int ,int,int *,int) ;
 int vfio_virqfd_disable (int *) ;

__attribute__((used)) static void vfio_msi_disable(struct vfio_pci_device *vdev, bool msix)
{
 struct pci_dev *pdev = vdev->pdev;
 int i;

 for (i = 0; i < vdev->num_ctx; i++) {
  vfio_virqfd_disable(&vdev->ctx[i].unmask);
  vfio_virqfd_disable(&vdev->ctx[i].mask);
 }

 vfio_msi_set_block(vdev, 0, vdev->num_ctx, ((void*)0), msix);

 pci_free_irq_vectors(pdev);





 if (vdev->nointx)
  pci_intx(pdev, 0);

 vdev->irq_type = VFIO_PCI_NUM_IRQS;
 vdev->num_ctx = 0;
 kfree(vdev->ctx);
}
