
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {int ops; } ;
struct controller {struct hotplug_slot hotplug_slot; } ;


 int kfree (int ) ;
 int pci_hp_destroy (struct hotplug_slot*) ;

__attribute__((used)) static void cleanup_slot(struct controller *ctrl)
{
 struct hotplug_slot *hotplug_slot = &ctrl->hotplug_slot;

 pci_hp_destroy(hotplug_slot);
 kfree(hotplug_slot->ops);
}
