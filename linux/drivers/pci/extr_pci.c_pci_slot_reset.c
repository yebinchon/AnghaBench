
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int hotplug; } ;


 int ENOTTY ;
 int might_sleep () ;
 int pci_reset_hotplug_slot (int ,int) ;
 int pci_slot_lock (struct pci_slot*) ;
 int pci_slot_resetable (struct pci_slot*) ;
 int pci_slot_unlock (struct pci_slot*) ;

__attribute__((used)) static int pci_slot_reset(struct pci_slot *slot, int probe)
{
 int rc;

 if (!slot || !pci_slot_resetable(slot))
  return -ENOTTY;

 if (!probe)
  pci_slot_lock(slot);

 might_sleep();

 rc = pci_reset_hotplug_slot(slot->hotplug, probe);

 if (!probe)
  pci_slot_unlock(slot);

 return rc;
}
