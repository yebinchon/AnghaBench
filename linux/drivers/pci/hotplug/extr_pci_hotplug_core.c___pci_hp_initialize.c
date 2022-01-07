
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {struct hotplug_slot* hotplug; } ;
struct pci_bus {int dummy; } ;
struct module {int dummy; } ;
struct hotplug_slot {char const* mod_name; struct pci_slot* pci_slot; struct module* owner; int * ops; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct pci_slot*) ;
 int PTR_ERR (struct pci_slot*) ;
 struct pci_slot* pci_create_slot (struct pci_bus*,int,char const*,struct hotplug_slot*) ;

int __pci_hp_initialize(struct hotplug_slot *slot, struct pci_bus *bus,
   int devnr, const char *name, struct module *owner,
   const char *mod_name)
{
 struct pci_slot *pci_slot;

 if (slot == ((void*)0))
  return -ENODEV;
 if (slot->ops == ((void*)0))
  return -EINVAL;

 slot->owner = owner;
 slot->mod_name = mod_name;






 pci_slot = pci_create_slot(bus, devnr, name, slot);
 if (IS_ERR(pci_slot))
  return PTR_ERR(pci_slot);

 slot->pci_slot = pci_slot;
 pci_slot->hotplug = slot;
 return 0;
}
