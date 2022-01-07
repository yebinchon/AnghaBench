
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int power_supply_notifier ;

void power_supply_unreg_notifier(struct notifier_block *nb)
{
 atomic_notifier_chain_unregister(&power_supply_notifier, nb);
}
