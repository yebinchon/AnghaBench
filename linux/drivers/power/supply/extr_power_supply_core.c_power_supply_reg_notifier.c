
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int power_supply_notifier ;

int power_supply_reg_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&power_supply_notifier, nb);
}
