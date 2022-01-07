
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int modern_bars; int common; int isr; int notify_base; int device; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;


 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_selected_regions (struct pci_dev*,int ) ;

void virtio_pci_modern_remove(struct virtio_pci_device *vp_dev)
{
 struct pci_dev *pci_dev = vp_dev->pci_dev;

 if (vp_dev->device)
  pci_iounmap(pci_dev, vp_dev->device);
 if (vp_dev->notify_base)
  pci_iounmap(pci_dev, vp_dev->notify_base);
 pci_iounmap(pci_dev, vp_dev->isr);
 pci_iounmap(pci_dev, vp_dev->common);
 pci_release_selected_regions(pci_dev, vp_dev->modern_bars);
}
