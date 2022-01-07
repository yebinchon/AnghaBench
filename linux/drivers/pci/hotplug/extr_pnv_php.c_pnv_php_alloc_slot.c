
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int * ops; } ;
struct pnv_php_slot {int slot_no; int power_state_check; int link; int children; TYPE_1__ slot; int id; struct pci_bus* bus; int pdev; struct device_node* dn; int state; int kref; int name; } ;
struct pci_bus {int self; } ;
struct device_node {scalar_t__ child; } ;
struct TYPE_4__ {int devfn; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* PCI_DN (scalar_t__) ;
 int PCI_SLOT (int ) ;
 int PNV_PHP_STATE_INITIALIZED ;
 int kfree (struct pnv_php_slot*) ;
 int kref_init (int *) ;
 int kstrdup (char const*,int ) ;
 struct pnv_php_slot* kzalloc (int,int ) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 struct pci_bus* pci_find_bus_by_node (struct device_node*) ;
 int php_slot_ops ;
 scalar_t__ pnv_pci_get_slot_id (struct device_node*,int *) ;

__attribute__((used)) static struct pnv_php_slot *pnv_php_alloc_slot(struct device_node *dn)
{
 struct pnv_php_slot *php_slot;
 struct pci_bus *bus;
 const char *label;
 uint64_t id;
 int ret;

 ret = of_property_read_string(dn, "ibm,slot-label", &label);
 if (ret)
  return ((void*)0);

 if (pnv_pci_get_slot_id(dn, &id))
  return ((void*)0);

 bus = pci_find_bus_by_node(dn);
 if (!bus)
  return ((void*)0);

 php_slot = kzalloc(sizeof(*php_slot), GFP_KERNEL);
 if (!php_slot)
  return ((void*)0);

 php_slot->name = kstrdup(label, GFP_KERNEL);
 if (!php_slot->name) {
  kfree(php_slot);
  return ((void*)0);
 }

 if (dn->child && PCI_DN(dn->child))
  php_slot->slot_no = PCI_SLOT(PCI_DN(dn->child)->devfn);
 else
  php_slot->slot_no = -1;

 kref_init(&php_slot->kref);
 php_slot->state = PNV_PHP_STATE_INITIALIZED;
 php_slot->dn = dn;
 php_slot->pdev = bus->self;
 php_slot->bus = bus;
 php_slot->id = id;
 php_slot->power_state_check = 0;
 php_slot->slot.ops = &php_slot_ops;

 INIT_LIST_HEAD(&php_slot->children);
 INIT_LIST_HEAD(&php_slot->link);

 return php_slot;
}
