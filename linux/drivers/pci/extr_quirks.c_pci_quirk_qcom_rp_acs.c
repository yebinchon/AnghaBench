
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_ACS_CR ;
 int PCI_ACS_RR ;
 int PCI_ACS_SV ;
 int PCI_ACS_UF ;
 int pci_info (struct pci_dev*,char*,int) ;

__attribute__((used)) static int pci_quirk_qcom_rp_acs(struct pci_dev *dev, u16 acs_flags)
{
 u16 flags = (PCI_ACS_RR | PCI_ACS_CR | PCI_ACS_UF | PCI_ACS_SV);
 int ret = acs_flags & ~flags ? 0 : 1;

 pci_info(dev, "Using QCOM ACS Quirk (%d)\n", ret);

 return ret;
}
