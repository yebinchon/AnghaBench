
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {scalar_t__ features; } ;


 int BUG_ON (int) ;
 scalar_t__ VIRTIO_PCI_GUEST_FEATURES ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vring_transport_features (struct virtio_device*) ;

__attribute__((used)) static int vp_finalize_features(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);


 vring_transport_features(vdev);


 BUG_ON((u32)vdev->features != vdev->features);


 iowrite32(vdev->features, vp_dev->ioaddr + VIRTIO_PCI_GUEST_FEATURES);

 return 0;
}
