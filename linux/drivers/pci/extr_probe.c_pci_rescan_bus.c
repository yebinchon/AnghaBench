
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_assign_unassigned_bus_resources (struct pci_bus*) ;
 int pci_bus_add_devices (struct pci_bus*) ;
 unsigned int pci_scan_child_bus (struct pci_bus*) ;

unsigned int pci_rescan_bus(struct pci_bus *bus)
{
 unsigned int max;

 max = pci_scan_child_bus(bus);
 pci_assign_unassigned_bus_resources(bus);
 pci_bus_add_devices(bus);

 return max;
}
