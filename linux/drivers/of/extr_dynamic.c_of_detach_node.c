
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_reconfig_data {struct device_node* dn; } ;
struct device_node {int dummy; } ;
typedef int rd ;


 int OF_RECONFIG_DETACH_NODE ;
 int __of_detach_node (struct device_node*) ;
 int __of_detach_node_sysfs (struct device_node*) ;
 int devtree_lock ;
 int memset (struct of_reconfig_data*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_mutex ;
 int of_reconfig_notify (int ,struct of_reconfig_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int of_detach_node(struct device_node *np)
{
 struct of_reconfig_data rd;
 unsigned long flags;
 int rc = 0;

 memset(&rd, 0, sizeof(rd));
 rd.dn = np;

 mutex_lock(&of_mutex);
 raw_spin_lock_irqsave(&devtree_lock, flags);
 __of_detach_node(np);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);

 __of_detach_node_sysfs(np);
 mutex_unlock(&of_mutex);

 of_reconfig_notify(OF_RECONFIG_DETACH_NODE, &rd);

 return rc;
}
