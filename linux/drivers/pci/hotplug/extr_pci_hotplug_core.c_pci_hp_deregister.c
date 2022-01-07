
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {int dummy; } ;


 int pci_hp_del (struct hotplug_slot*) ;
 int pci_hp_destroy (struct hotplug_slot*) ;

void pci_hp_deregister(struct hotplug_slot *slot)
{
 pci_hp_del(slot);
 pci_hp_destroy(slot);
}
