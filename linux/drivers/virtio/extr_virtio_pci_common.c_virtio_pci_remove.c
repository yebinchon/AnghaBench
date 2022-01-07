
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct virtio_pci_device {scalar_t__ ioaddr; TYPE_1__ vdev; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct virtio_pci_device* pci_get_drvdata (struct pci_dev*) ;
 int put_device (struct device*) ;
 int unregister_virtio_device (TYPE_1__*) ;
 int virtio_pci_legacy_remove (struct virtio_pci_device*) ;
 int virtio_pci_modern_remove (struct virtio_pci_device*) ;

__attribute__((used)) static void virtio_pci_remove(struct pci_dev *pci_dev)
{
 struct virtio_pci_device *vp_dev = pci_get_drvdata(pci_dev);
 struct device *dev = get_device(&vp_dev->vdev.dev);

 pci_disable_sriov(pci_dev);

 unregister_virtio_device(&vp_dev->vdev);

 if (vp_dev->ioaddr)
  virtio_pci_legacy_remove(vp_dev);
 else
  virtio_pci_modern_remove(vp_dev);

 pci_disable_device(pci_dev);
 put_device(dev);
}
