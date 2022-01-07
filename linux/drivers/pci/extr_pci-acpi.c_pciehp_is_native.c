
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_host_bridge {int native_pcie_hotplug; } ;
struct pci_dev {int bus; } ;


 int CONFIG_HOTPLUG_PCI_PCIE ;
 int IS_ENABLED (int ) ;
 int PCI_EXP_SLTCAP ;
 int PCI_EXP_SLTCAP_HPC ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 scalar_t__ pcie_ports_native ;

bool pciehp_is_native(struct pci_dev *bridge)
{
 const struct pci_host_bridge *host;
 u32 slot_cap;

 if (!IS_ENABLED(CONFIG_HOTPLUG_PCI_PCIE))
  return 0;

 pcie_capability_read_dword(bridge, PCI_EXP_SLTCAP, &slot_cap);
 if (!(slot_cap & PCI_EXP_SLTCAP_HPC))
  return 0;

 if (pcie_ports_native)
  return 1;

 host = pci_find_host_bridge(bridge->bus);
 return host->native_pcie_hotplug;
}
