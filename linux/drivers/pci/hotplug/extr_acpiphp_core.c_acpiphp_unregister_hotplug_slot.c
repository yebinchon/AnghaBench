
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int hotplug_slot; } ;
struct acpiphp_slot {struct slot* slot; } ;


 int kfree (struct slot*) ;
 int pci_hp_deregister (int *) ;
 int pr_info (char*,int ) ;
 int slot_name (struct slot*) ;

void acpiphp_unregister_hotplug_slot(struct acpiphp_slot *acpiphp_slot)
{
 struct slot *slot = acpiphp_slot->slot;

 pr_info("Slot [%s] unregistered\n", slot_name(slot));

 pci_hp_deregister(&slot->hotplug_slot);
 kfree(slot);
}
