
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_bus_allocate_dev_resources (struct pci_bus*) ;
 int pci_bus_allocate_resources (struct pci_bus*) ;

void pci_bus_claim_resources(struct pci_bus *b)
{
 pci_bus_allocate_resources(b);
 pci_bus_allocate_dev_resources(b);
}
