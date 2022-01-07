
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int __of_device_is_compatible (struct device_node const*,char const*,int *,int *) ;
 int devtree_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int of_device_is_compatible(const struct device_node *device,
  const char *compat)
{
 unsigned long flags;
 int res;

 raw_spin_lock_irqsave(&devtree_lock, flags);
 res = __of_device_is_compatible(device, compat, ((void*)0), ((void*)0));
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return res;
}
