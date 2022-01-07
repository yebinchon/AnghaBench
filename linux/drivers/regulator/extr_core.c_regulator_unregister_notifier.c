
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {TYPE_1__* rdev; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int notifier; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int regulator_unregister_notifier(struct regulator *regulator,
    struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&regulator->rdev->notifier,
        nb);
}
