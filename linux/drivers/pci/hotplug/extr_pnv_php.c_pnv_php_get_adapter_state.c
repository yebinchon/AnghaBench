
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct pnv_php_slot {int pdev; int id; } ;
struct hotplug_slot {int dummy; } ;


 int OPAL_PCI_SLOT_EMPTY ;
 int pci_warn (int ,char*,int) ;
 int pnv_pci_get_presence_state (int ,int *) ;
 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_get_adapter_state(struct hotplug_slot *slot, u8 *state)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);
 uint8_t presence = OPAL_PCI_SLOT_EMPTY;
 int ret;





 ret = pnv_pci_get_presence_state(php_slot->id, &presence);
 if (ret >= 0) {
  *state = presence;
  ret = 0;
 } else {
  pci_warn(php_slot->pdev, "Error %d getting presence\n", ret);
 }

 return ret;
}
