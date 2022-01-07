
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int (* notifier_call ) (struct notifier_block*,int ,int *) ;} ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int stub1 (struct notifier_block*,int ,int *) ;
 int xenstore_chain ;
 scalar_t__ xenstored_ready ;

int register_xenstore_notifier(struct notifier_block *nb)
{
 int ret = 0;

 if (xenstored_ready > 0)
  ret = nb->notifier_call(nb, 0, ((void*)0));
 else
  blocking_notifier_chain_register(&xenstore_chain, nb);

 return ret;
}
