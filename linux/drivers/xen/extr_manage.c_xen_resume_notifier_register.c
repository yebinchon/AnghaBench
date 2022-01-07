
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int raw_notifier_chain_register (int *,struct notifier_block*) ;
 int xen_resume_notifier ;

void xen_resume_notifier_register(struct notifier_block *nb)
{
 raw_notifier_chain_register(&xen_resume_notifier, nb);
}
