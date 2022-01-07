
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG ;
 int pci_intx (struct pci_dev*,int) ;

__attribute__((used)) static void pci_intx_for_msi(struct pci_dev *dev, int enable)
{
 if (!(dev->dev_flags & PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG))
  pci_intx(dev, enable);
}
