
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int bus_flags; } ;


 int PCI_BUS_FLAGS_NO_EXTCFG ;
 int PCI_CAP_ID_PCIX ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ;
 scalar_t__ PCI_X_STATUS ;
 int PCI_X_STATUS_266MHZ ;
 int PCI_X_STATUS_533MHZ ;
 int pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static bool pci_bridge_child_ext_cfg_accessible(struct pci_dev *bridge)
{
 int pos;
 u32 status;





 if (bridge->bus->bus_flags & PCI_BUS_FLAGS_NO_EXTCFG)
  return 0;






 if (pci_is_pcie(bridge) &&
     (pci_pcie_type(bridge) == PCI_EXP_TYPE_ROOT_PORT ||
      pci_pcie_type(bridge) == PCI_EXP_TYPE_UPSTREAM ||
      pci_pcie_type(bridge) == PCI_EXP_TYPE_DOWNSTREAM))
  return 1;
 pos = pci_find_capability(bridge, PCI_CAP_ID_PCIX);
 if (!pos)
  return 0;

 pci_read_config_dword(bridge, pos + PCI_X_STATUS, &status);
 return status & (PCI_X_STATUS_266MHZ | PCI_X_STATUS_533MHZ);
}
