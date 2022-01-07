
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int dell_rfkill_work ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int dell_laptop_rbtn_notifier_call(struct notifier_block *nb,
       unsigned long action, void *data)
{
 schedule_delayed_work(&dell_rfkill_work, 0);
 return NOTIFY_OK;
}
