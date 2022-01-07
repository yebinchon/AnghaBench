
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;


 struct pci_bus* pci_add_new_bus (struct pci_bus*,int *,int) ;
 int pci_bus_insert_busn_res (struct pci_bus*,int,int) ;
 int pci_domain_nr (struct pci_bus*) ;
 struct pci_bus* pci_find_bus (int ,int) ;

__attribute__((used)) static struct pci_bus *virtfn_add_bus(struct pci_bus *bus, int busnr)
{
 struct pci_bus *child;

 if (bus->number == busnr)
  return bus;

 child = pci_find_bus(pci_domain_nr(bus), busnr);
 if (child)
  return child;

 child = pci_add_new_bus(bus, ((void*)0), busnr);
 if (!child)
  return ((void*)0);

 pci_bus_insert_busn_res(child, busnr, busnr);

 return child;
}
