
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* __of_find_all_nodes (struct device_node*) ;
 int devtree_lock ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct device_node *of_find_all_nodes(struct device_node *prev)
{
 struct device_node *np;
 unsigned long flags;

 raw_spin_lock_irqsave(&devtree_lock, flags);
 np = __of_find_all_nodes(prev);
 of_node_get(np);
 of_node_put(prev);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return np;
}
