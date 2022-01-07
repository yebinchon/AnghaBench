
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct property {int name; struct property* next; } ;
struct of_changeset_entry {int action; int old_prop; struct property* prop; TYPE_1__* np; } ;
struct TYPE_12__ {struct property* deadprops; } ;


 int EINVAL ;





 int __of_add_property (TYPE_1__*,struct property*) ;
 int __of_add_property_sysfs (TYPE_1__*,struct property*) ;
 int __of_attach_node (TYPE_1__*) ;
 int __of_attach_node_sysfs (TYPE_1__*) ;
 int __of_changeset_entry_dump (struct of_changeset_entry*) ;
 int __of_detach_node (TYPE_1__*) ;
 int __of_detach_node_sysfs (TYPE_1__*) ;
 int __of_remove_property (TYPE_1__*,struct property*) ;
 int __of_remove_property_sysfs (TYPE_1__*,struct property*) ;
 int __of_update_property (TYPE_1__*,struct property*,struct property**) ;
 int __of_update_property_sysfs (TYPE_1__*,struct property*,int ) ;
 int devtree_lock ;
 int pr_err (char*,TYPE_1__*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __of_changeset_entry_apply(struct of_changeset_entry *ce)
{
 struct property *old_prop, **propp;
 unsigned long flags;
 int ret = 0;

 __of_changeset_entry_dump(ce);

 raw_spin_lock_irqsave(&devtree_lock, flags);
 switch (ce->action) {
 case 131:
  __of_attach_node(ce->np);
  break;
 case 130:
  __of_detach_node(ce->np);
  break;
 case 132:

  for (propp = &ce->np->deadprops; *propp; propp = &(*propp)->next) {
   if (*propp == ce->prop) {
    *propp = ce->prop->next;
    ce->prop->next = ((void*)0);
    break;
   }
  }

  ret = __of_add_property(ce->np, ce->prop);
  if (ret) {
   pr_err("changeset: add_property failed @%pOF/%s\n",
    ce->np,
    ce->prop->name);
   break;
  }
  break;
 case 129:
  ret = __of_remove_property(ce->np, ce->prop);
  if (ret) {
   pr_err("changeset: remove_property failed @%pOF/%s\n",
    ce->np,
    ce->prop->name);
   break;
  }
  break;

 case 128:

  for (propp = &ce->np->deadprops; *propp; propp = &(*propp)->next) {
   if (*propp == ce->prop) {
    *propp = ce->prop->next;
    ce->prop->next = ((void*)0);
    break;
   }
  }

  ret = __of_update_property(ce->np, ce->prop, &old_prop);
  if (ret) {
   pr_err("changeset: update_property failed @%pOF/%s\n",
    ce->np,
    ce->prop->name);
   break;
  }
  break;
 default:
  ret = -EINVAL;
 }
 raw_spin_unlock_irqrestore(&devtree_lock, flags);

 if (ret)
  return ret;

 switch (ce->action) {
 case 131:
  __of_attach_node_sysfs(ce->np);
  break;
 case 130:
  __of_detach_node_sysfs(ce->np);
  break;
 case 132:

  __of_add_property_sysfs(ce->np, ce->prop);
  break;
 case 129:
  __of_remove_property_sysfs(ce->np, ce->prop);
  break;
 case 128:
  __of_update_property_sysfs(ce->np, ce->prop, ce->old_prop);
  break;
 }

 return 0;
}
