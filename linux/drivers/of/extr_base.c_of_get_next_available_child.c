
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* sibling; struct device_node* child; } ;


 int __of_device_is_available (struct device_node*) ;
 int devtree_lock ;
 scalar_t__ of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct device_node *of_get_next_available_child(const struct device_node *node,
 struct device_node *prev)
{
 struct device_node *next;
 unsigned long flags;

 if (!node)
  return ((void*)0);

 raw_spin_lock_irqsave(&devtree_lock, flags);
 next = prev ? prev->sibling : node->child;
 for (; next; next = next->sibling) {
  if (!__of_device_is_available(next))
   continue;
  if (of_node_get(next))
   break;
 }
 of_node_put(prev);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return next;
}
