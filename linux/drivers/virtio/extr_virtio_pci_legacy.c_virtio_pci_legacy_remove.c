
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int ioaddr; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;


 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int ) ;

void virtio_pci_legacy_remove(struct virtio_pci_device *vp_dev)
{
 struct pci_dev *pci_dev = vp_dev->pci_dev;

 pci_iounmap(pci_dev, vp_dev->ioaddr);
 pci_release_region(pci_dev, 0);
}
