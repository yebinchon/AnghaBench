
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_chip {int notifier_list; } ;
struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;

int nvec_register_notifier(struct nvec_chip *nvec, struct notifier_block *nb,
      unsigned int events)
{
 return atomic_notifier_chain_register(&nvec->notifier_list, nb);
}
