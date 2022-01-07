
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int ENOTTY ;
 int PCI_ACS_CR ;
 int PCI_ACS_RR ;
 int PCI_ACS_SV ;
 int PCI_ACS_UF ;
 int pci_quirk_cavium_acs_match (struct pci_dev*) ;

__attribute__((used)) static int pci_quirk_cavium_acs(struct pci_dev *dev, u16 acs_flags)
{
 acs_flags &= ~(PCI_ACS_RR | PCI_ACS_CR | PCI_ACS_SV | PCI_ACS_UF);

 if (!pci_quirk_cavium_acs_match(dev))
  return -ENOTTY;

 return acs_flags ? 0 : 1;
}
