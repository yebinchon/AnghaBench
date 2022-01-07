
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int index; int vdev; } ;
struct virtio_pci_vq_info {struct virtqueue* vq; } ;
struct virtio_pci_device {scalar_t__ ioaddr; scalar_t__ msix_enabled; } ;


 int VIRTIO_MSI_NO_VECTOR ;
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ;
 scalar_t__ VIRTIO_PCI_ISR ;
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ;
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ;
 int ioread8 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;

__attribute__((used)) static void del_vq(struct virtio_pci_vq_info *info)
{
 struct virtqueue *vq = info->vq;
 struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);

 iowrite16(vq->index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);

 if (vp_dev->msix_enabled) {
  iowrite16(VIRTIO_MSI_NO_VECTOR,
     vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);

  ioread8(vp_dev->ioaddr + VIRTIO_PCI_ISR);
 }


 iowrite32(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);

 vring_del_virtqueue(vq);
}
