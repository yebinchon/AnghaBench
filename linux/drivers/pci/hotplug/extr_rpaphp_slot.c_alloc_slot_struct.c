
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct slot {int index; int power_domain; TYPE_1__ hotplug_slot; int dn; int name; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct slot*) ;
 int kstrdup (char*,int ) ;
 struct slot* kzalloc (int,int ) ;
 int of_node_get (struct device_node*) ;
 int rpaphp_hotplug_slot_ops ;

struct slot *alloc_slot_struct(struct device_node *dn,
  int drc_index, char *drc_name, int power_domain)
{
 struct slot *slot;

 slot = kzalloc(sizeof(struct slot), GFP_KERNEL);
 if (!slot)
  goto error_nomem;
 slot->name = kstrdup(drc_name, GFP_KERNEL);
 if (!slot->name)
  goto error_slot;
 slot->dn = of_node_get(dn);
 slot->index = drc_index;
 slot->power_domain = power_domain;
 slot->hotplug_slot.ops = &rpaphp_hotplug_slot_ops;

 return (slot);

error_slot:
 kfree(slot);
error_nomem:
 return ((void*)0);
}
