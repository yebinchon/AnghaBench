
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct asus_wmi {int hotplug_workqueue; TYPE_1__ hotplug_slot; int hotplug_work; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int asus_hotplug_slot_ops ;
 int asus_hotplug_work ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 int pci_hp_register (TYPE_1__*,struct pci_bus*,int ,char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int asus_setup_pci_hotplug(struct asus_wmi *asus)
{
 int ret = -ENOMEM;
 struct pci_bus *bus = pci_find_bus(0, 1);

 if (!bus) {
  pr_err("Unable to find wifi PCI bus\n");
  return -ENODEV;
 }

 asus->hotplug_workqueue =
     create_singlethread_workqueue("hotplug_workqueue");
 if (!asus->hotplug_workqueue)
  goto error_workqueue;

 INIT_WORK(&asus->hotplug_work, asus_hotplug_work);

 asus->hotplug_slot.ops = &asus_hotplug_slot_ops;

 ret = pci_hp_register(&asus->hotplug_slot, bus, 0, "asus-wifi");
 if (ret) {
  pr_err("Unable to register hotplug slot - %d\n", ret);
  goto error_register;
 }

 return 0;

error_register:
 asus->hotplug_slot.ops = ((void*)0);
 destroy_workqueue(asus->hotplug_workqueue);
error_workqueue:
 return ret;
}
