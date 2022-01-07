
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct module {int dummy; } ;
struct hotplug_slot {int dummy; } ;


 int __pci_hp_initialize (struct hotplug_slot*,struct pci_bus*,int,char const*,struct module*,char const*) ;
 int pci_hp_add (struct hotplug_slot*) ;
 int pci_hp_destroy (struct hotplug_slot*) ;

int __pci_hp_register(struct hotplug_slot *slot, struct pci_bus *bus,
        int devnr, const char *name,
        struct module *owner, const char *mod_name)
{
 int result;

 result = __pci_hp_initialize(slot, bus, devnr, name, owner, mod_name);
 if (result)
  return result;

 result = pci_hp_add(slot);
 if (result)
  pci_hp_destroy(slot);

 return result;
}
