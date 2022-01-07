
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * ops; } ;
struct slot {int number; int slot_list; TYPE_1__ hotplug_slot; int devfn; struct pci_bus* bus; } ;
struct pci_bus {int number; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_DEVFN (int,int ) ;
 int SLOT_NAME_SIZE ;
 scalar_t__ controller ;
 int cpci_hotplug_slot_ops ;
 int dbg (char*,char*) ;
 int down_write (int *) ;
 int err (char*,int) ;
 int kfree (struct slot*) ;
 struct slot* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_rwsem ;
 int pci_hp_register (TYPE_1__*,struct pci_bus*,int,char*) ;
 int slot_list ;
 char* slot_name (struct slot*) ;
 int slots ;
 int snprintf (char*,int,char*,int,int) ;
 int up_write (int *) ;

int
cpci_hp_register_bus(struct pci_bus *bus, u8 first, u8 last)
{
 struct slot *slot;
 char name[SLOT_NAME_SIZE];
 int status;
 int i;

 if (!(controller && bus))
  return -ENODEV;





 for (i = first; i <= last; ++i) {
  slot = kzalloc(sizeof(struct slot), GFP_KERNEL);
  if (!slot) {
   status = -ENOMEM;
   goto error;
  }

  slot->bus = bus;
  slot->number = i;
  slot->devfn = PCI_DEVFN(i, 0);

  snprintf(name, SLOT_NAME_SIZE, "%02x:%02x", bus->number, i);

  slot->hotplug_slot.ops = &cpci_hotplug_slot_ops;

  dbg("registering slot %s", name);
  status = pci_hp_register(&slot->hotplug_slot, bus, i, name);
  if (status) {
   err("pci_hp_register failed with error %d", status);
   goto error_slot;
  }
  dbg("slot registered with name: %s", slot_name(slot));


  down_write(&list_rwsem);
  list_add(&slot->slot_list, &slot_list);
  slots++;
  up_write(&list_rwsem);
 }
 return 0;
error_slot:
 kfree(slot);
error:
 return status;
}
