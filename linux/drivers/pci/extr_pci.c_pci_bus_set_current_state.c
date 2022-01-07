
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
typedef int pci_power_t ;


 int __pci_dev_set_current_state ;
 int pci_walk_bus (struct pci_bus*,int ,int *) ;

void pci_bus_set_current_state(struct pci_bus *bus, pci_power_t state)
{
 if (bus)
  pci_walk_bus(bus, __pci_dev_set_current_state, &state);
}
