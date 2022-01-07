
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ VIRTIO_PCI_STATUS ;
 int iowrite8 (scalar_t__,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

__attribute__((used)) static void vp_set_status(struct virtio_device *vdev, u8 status)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);

 BUG_ON(status == 0);
 iowrite8(status, vp_dev->ioaddr + VIRTIO_PCI_STATUS);
}
