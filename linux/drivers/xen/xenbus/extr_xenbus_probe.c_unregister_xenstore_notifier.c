
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int xenstore_chain ;

void unregister_xenstore_notifier(struct notifier_block *nb)
{
 blocking_notifier_chain_unregister(&xenstore_chain, nb);
}
