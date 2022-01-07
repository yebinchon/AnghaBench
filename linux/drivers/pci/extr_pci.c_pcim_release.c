
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int region_mask; int pinned; scalar_t__ enabled; int orig_intx; scalar_t__ restore_intx; scalar_t__ mwi; } ;
struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;
struct device {int dummy; } ;


 int DEVICE_COUNT_RESOURCE ;
 int pci_clear_mwi (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_intx (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void pcim_release(struct device *gendev, void *res)
{
 struct pci_dev *dev = to_pci_dev(gendev);
 struct pci_devres *this = res;
 int i;

 if (dev->msi_enabled)
  pci_disable_msi(dev);
 if (dev->msix_enabled)
  pci_disable_msix(dev);

 for (i = 0; i < DEVICE_COUNT_RESOURCE; i++)
  if (this->region_mask & (1 << i))
   pci_release_region(dev, i);

 if (this->mwi)
  pci_clear_mwi(dev);

 if (this->restore_intx)
  pci_intx(dev, this->orig_intx);

 if (this->enabled && !this->pinned)
  pci_disable_device(dev);
}
