
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_pci_device {TYPE_1__** vqs; int pci_dev; int per_vq_vectors; } ;
struct virtio_device {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {scalar_t__ msix_vector; } ;


 scalar_t__ VIRTIO_MSI_NO_VECTOR ;
 struct cpumask const* pci_irq_get_affinity (int ,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

const struct cpumask *vp_get_vq_affinity(struct virtio_device *vdev, int index)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);

 if (!vp_dev->per_vq_vectors ||
     vp_dev->vqs[index]->msix_vector == VIRTIO_MSI_NO_VECTOR)
  return ((void*)0);

 return pci_irq_get_affinity(vp_dev->pci_dev,
        vp_dev->vqs[index]->msix_vector);
}
