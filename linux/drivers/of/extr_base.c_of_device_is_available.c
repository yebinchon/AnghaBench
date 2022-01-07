
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int __of_device_is_available (struct device_node const*) ;
 int devtree_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

bool of_device_is_available(const struct device_node *device)
{
 unsigned long flags;
 bool res;

 raw_spin_lock_irqsave(&devtree_lock, flags);
 res = __of_device_is_available(device);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return res;

}
