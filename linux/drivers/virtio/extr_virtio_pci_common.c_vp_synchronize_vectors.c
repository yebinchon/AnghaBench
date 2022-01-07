
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_pci_device {int msix_vectors; TYPE_1__* pci_dev; scalar_t__ intx_enabled; } ;
struct virtio_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int pci_irq_vector (TYPE_1__*,int) ;
 int synchronize_irq (int ) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

void vp_synchronize_vectors(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 int i;

 if (vp_dev->intx_enabled)
  synchronize_irq(vp_dev->pci_dev->irq);

 for (i = 0; i < vp_dev->msix_vectors; ++i)
  synchronize_irq(pci_irq_vector(vp_dev->pci_dev, i));
}
