
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {int pci_slot; int slot_list; } ;


 scalar_t__ WARN_ON (int) ;
 int dbg (char*,int ) ;
 int fs_remove_slot (int ) ;
 struct hotplug_slot* get_slot_from_name (int ) ;
 int hotplug_slot_name (struct hotplug_slot*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_hp_mutex ;

void pci_hp_del(struct hotplug_slot *slot)
{
 struct hotplug_slot *temp;

 if (WARN_ON(!slot))
  return;

 mutex_lock(&pci_hp_mutex);
 temp = get_slot_from_name(hotplug_slot_name(slot));
 if (WARN_ON(temp != slot)) {
  mutex_unlock(&pci_hp_mutex);
  return;
 }

 list_del(&slot->slot_list);
 mutex_unlock(&pci_hp_mutex);
 dbg("Removed slot %s from the list\n", hotplug_slot_name(slot));
 fs_remove_slot(slot->pci_slot);
}
