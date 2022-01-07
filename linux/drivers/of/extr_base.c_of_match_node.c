
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;


 struct of_device_id* __of_match_node (struct of_device_id const*,struct device_node const*) ;
 int devtree_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

const struct of_device_id *of_match_node(const struct of_device_id *matches,
      const struct device_node *node)
{
 const struct of_device_id *match;
 unsigned long flags;

 raw_spin_lock_irqsave(&devtree_lock, flags);
 match = __of_match_node(matches, node);
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 return match;
}
