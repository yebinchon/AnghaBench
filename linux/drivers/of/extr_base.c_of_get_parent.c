
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int parent; } ;


 int devtree_lock ;
 struct device_node* of_node_get (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct device_node *of_get_parent(const struct device_node *node)
{
 struct device_node *np;
 unsigned long flags;

 if (!node)
  return ((void*)0);

 raw_spin_lock_irqsave(&devtree_lock, flags);
 np = of_node_get(node->parent);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return np;
}
