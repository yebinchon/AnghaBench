
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_ACS_CR ;
 int PCI_ACS_DT ;
 int PCI_ACS_RR ;
 int PCI_ACS_SV ;
 int PCI_ACS_TB ;
 int PCI_ACS_UF ;

__attribute__((used)) static int pci_quirk_mf_endpoint_acs(struct pci_dev *dev, u16 acs_flags)
{
 acs_flags &= ~(PCI_ACS_SV | PCI_ACS_TB | PCI_ACS_RR |
         PCI_ACS_CR | PCI_ACS_UF | PCI_ACS_DT);

 return acs_flags ? 0 : 1;
}
