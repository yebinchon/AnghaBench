
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_5__ {int head; } ;
struct TYPE_4__ {int drv; } ;


 int atomic_notifier_chain_unregister (TYPE_2__*,struct notifier_block*) ;
 scalar_t__ auto_remove_rfkill ;
 int driver_for_each_device (int *,int *,void*,int ) ;
 TYPE_2__ rbtn_chain_head ;
 TYPE_1__ rbtn_driver ;
 int rbtn_switch_dev ;

int dell_rbtn_notifier_unregister(struct notifier_block *nb)
{
 int ret;

 ret = atomic_notifier_chain_unregister(&rbtn_chain_head, nb);
 if (ret != 0)
  return ret;

 if (auto_remove_rfkill && !rbtn_chain_head.head)
  ret = driver_for_each_device(&rbtn_driver.drv, ((void*)0),
          (void *)1, rbtn_switch_dev);

 return ret;
}
