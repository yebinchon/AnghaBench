
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_slot {int flags; } ;


 int ENODEV ;
 int SLOT_ENABLED ;
 int SLOT_IS_GOING_AWAY ;
 int enable_slot (struct acpiphp_slot*,int) ;
 int pci_lock_rescan_remove () ;
 int pci_unlock_rescan_remove () ;

int acpiphp_enable_slot(struct acpiphp_slot *slot)
{
 pci_lock_rescan_remove();

 if (slot->flags & SLOT_IS_GOING_AWAY) {
  pci_unlock_rescan_remove();
  return -ENODEV;
 }


 if (!(slot->flags & SLOT_ENABLED))
  enable_slot(slot, 0);

 pci_unlock_rescan_remove();
 return 0;
}
