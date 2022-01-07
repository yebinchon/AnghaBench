
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int dummy; } ;
struct pci_bus {int bridge; } ;


 struct pci_bus* find_pci_root_bus (struct pci_bus*) ;
 struct pci_host_bridge* to_pci_host_bridge (int ) ;

struct pci_host_bridge *pci_find_host_bridge(struct pci_bus *bus)
{
 struct pci_bus *root_bus = find_pci_root_bus(bus);

 return to_pci_host_bridge(root_bus->bridge);
}
