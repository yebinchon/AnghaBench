
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCIPCI_VSFX ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_pci_problems ;

__attribute__((used)) static void quirk_vsfx(struct pci_dev *dev)
{
 if ((pci_pci_problems&PCIPCI_VSFX) == 0) {
  pci_info(dev, "Limiting direct PCI/PCI transfers\n");
  pci_pci_problems |= PCIPCI_VSFX;
 }
}
