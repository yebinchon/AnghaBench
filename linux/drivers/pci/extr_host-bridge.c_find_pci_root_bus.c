
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {struct pci_bus* parent; } ;



__attribute__((used)) static struct pci_bus *find_pci_root_bus(struct pci_bus *bus)
{
 while (bus->parent)
  bus = bus->parent;

 return bus;
}
