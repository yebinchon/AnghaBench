
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {scalar_t__ state; int dn; int bus; } ;
struct hotplug_slot {int dummy; } ;


 int OPAL_PCI_SLOT_POWER_OFF ;
 scalar_t__ PNV_PHP_STATE_POPULATED ;
 scalar_t__ PNV_PHP_STATE_REGISTERED ;
 int pci_hp_remove_devices (int ) ;
 int pci_lock_rescan_remove () ;
 int pci_unlock_rescan_remove () ;
 int pnv_php_set_slot_power_state (struct hotplug_slot*,int ) ;
 int pnv_php_unregister (int ) ;
 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_disable_slot(struct hotplug_slot *slot)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);
 int ret;

 if (php_slot->state != PNV_PHP_STATE_POPULATED)
  return 0;


 pci_lock_rescan_remove();
 pci_hp_remove_devices(php_slot->bus);
 pci_unlock_rescan_remove();


 pnv_php_unregister(php_slot->dn);


 ret = pnv_php_set_slot_power_state(slot, OPAL_PCI_SLOT_POWER_OFF);

 php_slot->state = PNV_PHP_STATE_REGISTERED;
 return ret;
}
