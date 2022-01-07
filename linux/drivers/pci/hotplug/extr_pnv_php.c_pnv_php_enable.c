
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct hotplug_slot {int dummy; } ;
struct pnv_php_slot {scalar_t__ state; int power_state_check; int dn; int bus; struct hotplug_slot slot; } ;


 scalar_t__ OPAL_PCI_SLOT_EMPTY ;
 scalar_t__ OPAL_PCI_SLOT_POWER_ON ;
 scalar_t__ OPAL_PCI_SLOT_PRESENT ;
 void* PNV_PHP_STATE_POPULATED ;
 scalar_t__ PNV_PHP_STATE_REGISTERED ;
 int pci_hp_add_devices (int ) ;
 int pci_lock_rescan_remove () ;
 int pci_unlock_rescan_remove () ;
 int pnv_php_get_adapter_state (struct hotplug_slot*,scalar_t__*) ;
 int pnv_php_get_power_state (struct hotplug_slot*,scalar_t__*) ;
 int pnv_php_register (int ) ;
 int pnv_php_set_slot_power_state (struct hotplug_slot*,scalar_t__) ;

__attribute__((used)) static int pnv_php_enable(struct pnv_php_slot *php_slot, bool rescan)
{
 struct hotplug_slot *slot = &php_slot->slot;
 uint8_t presence = OPAL_PCI_SLOT_EMPTY;
 uint8_t power_status = OPAL_PCI_SLOT_POWER_ON;
 int ret;


 if (php_slot->state != PNV_PHP_STATE_REGISTERED)
  return 0;


 ret = pnv_php_get_adapter_state(slot, &presence);
 if (ret)
  return ret;







 if (presence == OPAL_PCI_SLOT_EMPTY) {
  if (!php_slot->power_state_check) {
   php_slot->power_state_check = 1;

   return 0;
  }

  goto scan;
 }
 if (!php_slot->power_state_check) {
  php_slot->power_state_check = 1;

  ret = pnv_php_get_power_state(slot, &power_status);
  if (ret)
   return ret;

  if (power_status != OPAL_PCI_SLOT_POWER_ON)
   return 0;
 }


 ret = pnv_php_get_power_state(slot, &power_status);
 if (ret)
  return ret;

 if (power_status == OPAL_PCI_SLOT_POWER_ON)
  goto scan;


 ret = pnv_php_set_slot_power_state(slot, OPAL_PCI_SLOT_POWER_ON);
 if (ret)
  return ret;

scan:
 if (presence == OPAL_PCI_SLOT_PRESENT) {
  if (rescan) {
   pci_lock_rescan_remove();
   pci_hp_add_devices(php_slot->bus);
   pci_unlock_rescan_remove();
  }


  php_slot->state = PNV_PHP_STATE_POPULATED;
  if (rescan)
   pnv_php_register(php_slot->dn);
 } else {
  php_slot->state = PNV_PHP_STATE_POPULATED;
 }

 return 0;
}
