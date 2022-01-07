
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* __of_get_next_child (struct device_node const*,struct device_node*) ;
 int devtree_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct device_node *of_get_next_child(const struct device_node *node,
 struct device_node *prev)
{
 struct device_node *next;
 unsigned long flags;

 raw_spin_lock_irqsave(&devtree_lock, flags);
 next = __of_get_next_child(node, prev);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return next;
}
