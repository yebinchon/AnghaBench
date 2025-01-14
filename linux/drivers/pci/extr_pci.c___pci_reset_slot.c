
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int hotplug; } ;


 int EAGAIN ;
 int might_sleep () ;
 int pci_reset_hotplug_slot (int ,int ) ;
 int pci_slot_reset (struct pci_slot*,int) ;
 int pci_slot_restore_locked (struct pci_slot*) ;
 int pci_slot_save_and_disable_locked (struct pci_slot*) ;
 scalar_t__ pci_slot_trylock (struct pci_slot*) ;
 int pci_slot_unlock (struct pci_slot*) ;

__attribute__((used)) static int __pci_reset_slot(struct pci_slot *slot)
{
 int rc;

 rc = pci_slot_reset(slot, 1);
 if (rc)
  return rc;

 if (pci_slot_trylock(slot)) {
  pci_slot_save_and_disable_locked(slot);
  might_sleep();
  rc = pci_reset_hotplug_slot(slot->hotplug, 0);
  pci_slot_restore_locked(slot);
  pci_slot_unlock(slot);
 } else
  rc = -EAGAIN;

 return rc;
}
