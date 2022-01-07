
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCIPCI_FAIL ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_pci_problems ;

__attribute__((used)) static void quirk_nopcipci(struct pci_dev *dev)
{
 if ((pci_pci_problems & PCIPCI_FAIL) == 0) {
  pci_info(dev, "Disabling direct PCI/PCI transfers\n");
  pci_pci_problems |= PCIPCI_FAIL;
 }
}
