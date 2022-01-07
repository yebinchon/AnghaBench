
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_pme_wakeup ;
 int pci_walk_bus (struct pci_bus*,int ,void*) ;

void pci_pme_wakeup_bus(struct pci_bus *bus)
{
 if (bus)
  pci_walk_bus(bus, pci_pme_wakeup, (void *)1);
}
