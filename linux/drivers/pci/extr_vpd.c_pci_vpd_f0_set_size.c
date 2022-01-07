
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; int bus; } ;


 int ENODEV ;
 int PCI_DEVFN (int ,int ) ;
 int PCI_SLOT (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 int pci_set_vpd_size (struct pci_dev*,size_t) ;

__attribute__((used)) static int pci_vpd_f0_set_size(struct pci_dev *dev, size_t len)
{
 struct pci_dev *tdev = pci_get_slot(dev->bus,
         PCI_DEVFN(PCI_SLOT(dev->devfn), 0));
 int ret;

 if (!tdev)
  return -ENODEV;

 ret = pci_set_vpd_size(tdev, len);
 pci_dev_put(tdev);
 return ret;
}
