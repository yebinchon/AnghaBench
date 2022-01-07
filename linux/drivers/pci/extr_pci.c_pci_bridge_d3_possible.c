
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_hotplug_bridge; int is_thunderbolt; } ;





 int bridge_d3_blacklist ;
 int dmi_check_system (int ) ;
 int dmi_get_bios_year () ;
 int pci_bridge_d3_disable ;
 int pci_bridge_d3_force ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_pcie_type (struct pci_dev*) ;
 int pciehp_is_native (struct pci_dev*) ;
 int platform_pci_bridge_d3 (struct pci_dev*) ;

bool pci_bridge_d3_possible(struct pci_dev *bridge)
{
 if (!pci_is_pcie(bridge))
  return 0;

 switch (pci_pcie_type(bridge)) {
 case 129:
 case 128:
 case 130:
  if (pci_bridge_d3_disable)
   return 0;





  if (bridge->is_hotplug_bridge && !pciehp_is_native(bridge))
   return 0;

  if (pci_bridge_d3_force)
   return 1;


  if (bridge->is_thunderbolt)
   return 1;


  if (platform_pci_bridge_d3(bridge))
   return 1;






  if (bridge->is_hotplug_bridge)
   return 0;

  if (dmi_check_system(bridge_d3_blacklist))
   return 0;





  if (dmi_get_bios_year() >= 2015)
   return 1;
  break;
 }

 return 0;
}
