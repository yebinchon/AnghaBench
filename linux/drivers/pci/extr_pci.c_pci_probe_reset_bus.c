
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_bus_reset (struct pci_bus*,int) ;

int pci_probe_reset_bus(struct pci_bus *bus)
{
 return pci_bus_reset(bus, 1);
}
