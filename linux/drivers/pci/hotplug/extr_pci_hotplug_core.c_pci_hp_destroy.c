
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int * hotplug; } ;
struct hotplug_slot {struct pci_slot* pci_slot; } ;


 int pci_destroy_slot (struct pci_slot*) ;

void pci_hp_destroy(struct hotplug_slot *slot)
{
 struct pci_slot *pci_slot = slot->pci_slot;

 slot->pci_slot = ((void*)0);
 pci_slot->hotplug = ((void*)0);
 pci_destroy_slot(pci_slot);
}
