
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_CFG_SPACE_EXP_SIZE ;
 int PCI_CFG_SPACE_SIZE ;
 int PCI_VENDOR_ID ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int,scalar_t__*) ;

__attribute__((used)) static bool pci_ext_cfg_is_aliased(struct pci_dev *dev)
{
 return 0;

}
