
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct of_changeset_entry {unsigned long action; int node; int old_prop; struct property* prop; int np; } ;
struct of_changeset {int entries; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long OF_RECONFIG_UPDATE_PROPERTY ;
 struct of_changeset_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_find_property (struct device_node*,int ,int *) ;
 int of_node_get (struct device_node*) ;

int of_changeset_action(struct of_changeset *ocs, unsigned long action,
  struct device_node *np, struct property *prop)
{
 struct of_changeset_entry *ce;

 ce = kzalloc(sizeof(*ce), GFP_KERNEL);
 if (!ce)
  return -ENOMEM;


 ce->action = action;
 ce->np = of_node_get(np);
 ce->prop = prop;

 if (action == OF_RECONFIG_UPDATE_PROPERTY && prop)
  ce->old_prop = of_find_property(np, prop->name, ((void*)0));


 list_add_tail(&ce->node, &ocs->entries);
 return 0;
}
