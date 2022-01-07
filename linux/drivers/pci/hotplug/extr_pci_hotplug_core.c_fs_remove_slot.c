
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_slot {int kobj; } ;
struct TYPE_10__ {int attr; } ;
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {int attr; } ;
struct TYPE_7__ {int attr; } ;
struct TYPE_6__ {int attr; } ;


 scalar_t__ has_adapter_file (struct pci_slot*) ;
 scalar_t__ has_attention_file (struct pci_slot*) ;
 scalar_t__ has_latch_file (struct pci_slot*) ;
 scalar_t__ has_power_file (struct pci_slot*) ;
 scalar_t__ has_test_file (struct pci_slot*) ;
 TYPE_5__ hotplug_slot_attr_attention ;
 TYPE_4__ hotplug_slot_attr_latch ;
 TYPE_3__ hotplug_slot_attr_power ;
 TYPE_2__ hotplug_slot_attr_presence ;
 TYPE_1__ hotplug_slot_attr_test ;
 int pci_hp_remove_module_link (struct pci_slot*) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void fs_remove_slot(struct pci_slot *pci_slot)
{
 if (has_power_file(pci_slot))
  sysfs_remove_file(&pci_slot->kobj, &hotplug_slot_attr_power.attr);

 if (has_attention_file(pci_slot))
  sysfs_remove_file(&pci_slot->kobj,
      &hotplug_slot_attr_attention.attr);

 if (has_latch_file(pci_slot))
  sysfs_remove_file(&pci_slot->kobj, &hotplug_slot_attr_latch.attr);

 if (has_adapter_file(pci_slot))
  sysfs_remove_file(&pci_slot->kobj,
      &hotplug_slot_attr_presence.attr);

 if (has_test_file(pci_slot))
  sysfs_remove_file(&pci_slot->kobj, &hotplug_slot_attr_test.attr);

 pci_hp_remove_module_link(pci_slot);
}
