
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int overlay_notify_chain ;

int of_overlay_notifier_unregister(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&overlay_notify_chain, nb);
}
