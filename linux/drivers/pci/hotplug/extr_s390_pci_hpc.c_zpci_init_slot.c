
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpci_dev {int fid; int bus; } ;
struct TYPE_2__ {int * ops; } ;
struct slot {int slot_list; TYPE_1__ hotplug_slot; struct zpci_dev* zdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLOT_NAME_SIZE ;
 int ZPCI_DEVFN ;
 int kfree (struct slot*) ;
 struct slot* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pci_hp_register (TYPE_1__*,int ,int ,char*) ;
 int s390_hotplug_slot_list ;
 int s390_hotplug_slot_ops ;
 int snprintf (char*,int,char*,int) ;

int zpci_init_slot(struct zpci_dev *zdev)
{
 char name[SLOT_NAME_SIZE];
 struct slot *slot;
 int rc;

 if (!zdev)
  return 0;

 slot = kzalloc(sizeof(*slot), GFP_KERNEL);
 if (!slot)
  goto error;

 slot->zdev = zdev;
 slot->hotplug_slot.ops = &s390_hotplug_slot_ops;

 snprintf(name, SLOT_NAME_SIZE, "%08x", zdev->fid);
 rc = pci_hp_register(&slot->hotplug_slot, zdev->bus,
        ZPCI_DEVFN, name);
 if (rc)
  goto error_reg;

 list_add(&slot->slot_list, &s390_hotplug_slot_list);
 return 0;

error_reg:
 kfree(slot);
error:
 return -ENOMEM;
}
