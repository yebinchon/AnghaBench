
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int no_msi; } ;


 int pci_warn (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_pcie_pxh(struct pci_dev *dev)
{
 dev->no_msi = 1;
 pci_warn(dev, "PXH quirk detected; SHPC device MSI disabled\n");
}
