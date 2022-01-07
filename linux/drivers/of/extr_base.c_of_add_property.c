
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int OF_RECONFIG_ADD_PROPERTY ;
 int __of_add_property (struct device_node*,struct property*) ;
 int __of_add_property_sysfs (struct device_node*,struct property*) ;
 int devtree_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_mutex ;
 int of_property_notify (int ,struct device_node*,struct property*,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int of_add_property(struct device_node *np, struct property *prop)
{
 unsigned long flags;
 int rc;

 mutex_lock(&of_mutex);

 raw_spin_lock_irqsave(&devtree_lock, flags);
 rc = __of_add_property(np, prop);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);

 if (!rc)
  __of_add_property_sysfs(np, prop);

 mutex_unlock(&of_mutex);

 if (!rc)
  of_property_notify(OF_RECONFIG_ADD_PROPERTY, np, prop, ((void*)0));

 return rc;
}
