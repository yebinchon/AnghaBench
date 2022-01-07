
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {int state; int link; int children; struct pnv_php_slot* parent; int pdev; int name; int slot_no; int bus; int slot; struct device_node* dn; } ;
struct device_node {int dummy; } ;


 int EEXIST ;
 int PCI_DN (struct device_node*) ;
 int PNV_PHP_STATE_REGISTERED ;
 int list_add_tail (int *,int *) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pci_hp_register (int *,int ,int ,int ) ;
 int pci_warn (int ,char*,int) ;
 struct pnv_php_slot* pnv_php_find_slot (struct device_node*) ;
 int pnv_php_lock ;
 int pnv_php_put_slot (struct pnv_php_slot*) ;
 int pnv_php_slot_list ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pnv_php_register_slot(struct pnv_php_slot *php_slot)
{
 struct pnv_php_slot *parent;
 struct device_node *dn = php_slot->dn;
 unsigned long flags;
 int ret;


 parent = pnv_php_find_slot(php_slot->dn);
 if (parent) {
  pnv_php_put_slot(parent);
  return -EEXIST;
 }


 ret = pci_hp_register(&php_slot->slot, php_slot->bus,
         php_slot->slot_no, php_slot->name);
 if (ret) {
  pci_warn(php_slot->pdev, "Error %d registering slot\n", ret);
  return ret;
 }


 while ((dn = of_get_parent(dn))) {
  if (!PCI_DN(dn)) {
   of_node_put(dn);
   break;
  }

  parent = pnv_php_find_slot(dn);
  if (parent) {
   of_node_put(dn);
   break;
  }

  of_node_put(dn);
 }

 spin_lock_irqsave(&pnv_php_lock, flags);
 php_slot->parent = parent;
 if (parent)
  list_add_tail(&php_slot->link, &parent->children);
 else
  list_add_tail(&php_slot->link, &pnv_php_slot_list);
 spin_unlock_irqrestore(&pnv_php_lock, flags);

 php_slot->state = PNV_PHP_STATE_REGISTERED;
 return 0;
}
