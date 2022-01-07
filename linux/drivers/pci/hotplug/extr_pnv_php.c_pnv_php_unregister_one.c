
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {int slot; int state; } ;
struct device_node {int dummy; } ;


 int PNV_PHP_STATE_OFFLINE ;
 int pci_hp_deregister (int *) ;
 struct pnv_php_slot* pnv_php_find_slot (struct device_node*) ;
 int pnv_php_put_slot (struct pnv_php_slot*) ;
 int pnv_php_release (struct pnv_php_slot*) ;

__attribute__((used)) static void pnv_php_unregister_one(struct device_node *dn)
{
 struct pnv_php_slot *php_slot;

 php_slot = pnv_php_find_slot(dn);
 if (!php_slot)
  return;

 php_slot->state = PNV_PHP_STATE_OFFLINE;
 pci_hp_deregister(&php_slot->slot);
 pnv_php_release(php_slot);
 pnv_php_put_slot(php_slot);
}
