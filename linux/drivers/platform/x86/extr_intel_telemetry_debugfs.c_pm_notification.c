
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;


 int pm_suspend_exit_cb () ;
 int pm_suspend_prep_cb () ;

__attribute__((used)) static int pm_notification(struct notifier_block *this,
      unsigned long event, void *ptr)
{
 switch (event) {
 case 128:
  return pm_suspend_prep_cb();
 case 129:
  return pm_suspend_exit_cb();
 }

 return NOTIFY_DONE;
}
