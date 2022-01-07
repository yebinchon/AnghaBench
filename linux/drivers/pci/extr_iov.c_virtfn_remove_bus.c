
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int devices; } ;


 scalar_t__ list_empty (int *) ;
 int pci_remove_bus (struct pci_bus*) ;

__attribute__((used)) static void virtfn_remove_bus(struct pci_bus *physbus, struct pci_bus *virtbus)
{
 if (physbus != virtbus && list_empty(&virtbus->devices))
  pci_remove_bus(virtbus);
}
