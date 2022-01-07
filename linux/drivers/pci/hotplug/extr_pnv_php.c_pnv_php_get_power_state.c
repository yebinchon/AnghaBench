
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct pnv_php_slot {int pdev; int id; } ;
struct hotplug_slot {int dummy; } ;


 int OPAL_PCI_SLOT_POWER_ON ;
 int pci_warn (int ,char*,int) ;
 int pnv_pci_get_power_state (int ,int *) ;
 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_get_power_state(struct hotplug_slot *slot, u8 *state)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);
 uint8_t power_state = OPAL_PCI_SLOT_POWER_ON;
 int ret;






 ret = pnv_pci_get_power_state(php_slot->id, &power_state);
 if (ret) {
  pci_warn(php_slot->pdev, "Error %d getting power status\n",
    ret);
 } else {
  *state = power_state;
 }

 return 0;
}
