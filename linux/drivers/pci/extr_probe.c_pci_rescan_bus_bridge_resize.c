
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int dummy; } ;


 int pci_assign_unassigned_bridge_resources (struct pci_dev*) ;
 int pci_bus_add_devices (struct pci_bus*) ;
 unsigned int pci_scan_child_bus (struct pci_bus*) ;

unsigned int pci_rescan_bus_bridge_resize(struct pci_dev *bridge)
{
 unsigned int max;
 struct pci_bus *bus = bridge->subordinate;

 max = pci_scan_child_bus(bus);

 pci_assign_unassigned_bridge_resources(bridge);

 pci_bus_add_devices(bus);

 return max;
}
