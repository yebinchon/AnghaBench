
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int kobj; } ;
struct hotplug_slot {int slot_list; struct pci_slot* pci_slot; } ;


 int KOBJ_ADD ;
 int dbg (char*,int ) ;
 int fs_add_slot (struct pci_slot*) ;
 int hotplug_slot_name (struct hotplug_slot*) ;
 int kobject_uevent (int *,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_hotplug_slot_list ;
 int pci_hp_mutex ;

int pci_hp_add(struct hotplug_slot *slot)
{
 struct pci_slot *pci_slot = slot->pci_slot;
 int result;

 result = fs_add_slot(pci_slot);
 if (result)
  return result;

 kobject_uevent(&pci_slot->kobj, KOBJ_ADD);
 mutex_lock(&pci_hp_mutex);
 list_add(&slot->slot_list, &pci_hotplug_slot_list);
 mutex_unlock(&pci_hp_mutex);
 dbg("Added slot %s to the list\n", hotplug_slot_name(slot));
 return 0;
}
