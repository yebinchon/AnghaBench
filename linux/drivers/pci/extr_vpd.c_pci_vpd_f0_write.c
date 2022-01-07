
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; int bus; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int ENODEV ;
 int PCI_DEVFN (int ,int ) ;
 int PCI_SLOT (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 int pci_write_vpd (struct pci_dev*,int ,size_t,void const*) ;

__attribute__((used)) static ssize_t pci_vpd_f0_write(struct pci_dev *dev, loff_t pos, size_t count,
    const void *arg)
{
 struct pci_dev *tdev = pci_get_slot(dev->bus,
         PCI_DEVFN(PCI_SLOT(dev->devfn), 0));
 ssize_t ret;

 if (!tdev)
  return -ENODEV;

 ret = pci_write_vpd(tdev, pos, count, arg);
 pci_dev_put(tdev);
 return ret;
}
