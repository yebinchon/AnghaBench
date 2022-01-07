
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int OF_RECONFIG_UPDATE_PROPERTY ;
 int __of_update_property (struct device_node*,struct property*,struct property**) ;
 int __of_update_property_sysfs (struct device_node*,struct property*,struct property*) ;
 int devtree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_mutex ;
 int of_property_notify (int ,struct device_node*,struct property*,struct property*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int of_update_property(struct device_node *np, struct property *newprop)
{
 struct property *oldprop;
 unsigned long flags;
 int rc;

 if (!newprop->name)
  return -EINVAL;

 mutex_lock(&of_mutex);

 raw_spin_lock_irqsave(&devtree_lock, flags);
 rc = __of_update_property(np, newprop, &oldprop);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);

 if (!rc)
  __of_update_property_sysfs(np, newprop, oldprop);

 mutex_unlock(&of_mutex);

 if (!rc)
  of_property_notify(OF_RECONFIG_UPDATE_PROPERTY, np, newprop, oldprop);

 return rc;
}
