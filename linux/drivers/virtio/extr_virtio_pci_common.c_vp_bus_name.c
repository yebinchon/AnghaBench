
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int pci_dev; } ;
struct virtio_device {int dummy; } ;


 char const* pci_name (int ) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

const char *vp_bus_name(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);

 return pci_name(vp_dev->pci_dev);
}
