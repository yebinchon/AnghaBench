
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int dummy; } ;
struct virtio_device {int dummy; } ;
struct device {int dummy; } ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int kfree (struct virtio_pci_device*) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

__attribute__((used)) static void virtio_pci_release_dev(struct device *_d)
{
 struct virtio_device *vdev = dev_to_virtio(_d);
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);




 kfree(vp_dev);
}
