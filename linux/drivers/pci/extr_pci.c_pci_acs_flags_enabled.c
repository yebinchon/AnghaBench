
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_ACS_CAP ;
 scalar_t__ PCI_ACS_CTRL ;
 int PCI_ACS_EC ;
 int PCI_EXT_CAP_ID_ACS ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static bool pci_acs_flags_enabled(struct pci_dev *pdev, u16 acs_flags)
{
 int pos;
 u16 cap, ctrl;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ACS);
 if (!pos)
  return 0;






 pci_read_config_word(pdev, pos + PCI_ACS_CAP, &cap);
 acs_flags &= (cap | PCI_ACS_EC);

 pci_read_config_word(pdev, pos + PCI_ACS_CTRL, &ctrl);
 return (ctrl & acs_flags) == acs_flags;
}
