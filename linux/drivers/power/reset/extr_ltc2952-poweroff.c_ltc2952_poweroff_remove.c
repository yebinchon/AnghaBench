
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ltc2952_poweroff {int panic_notifier; int timer_wde; int timer_trigger; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;
 int hrtimer_cancel (int *) ;
 int panic_notifier_list ;
 struct ltc2952_poweroff* platform_get_drvdata (struct platform_device*) ;
 int * pm_power_off ;

__attribute__((used)) static int ltc2952_poweroff_remove(struct platform_device *pdev)
{
 struct ltc2952_poweroff *data = platform_get_drvdata(pdev);

 pm_power_off = ((void*)0);
 hrtimer_cancel(&data->timer_trigger);
 hrtimer_cancel(&data->timer_wde);
 atomic_notifier_chain_unregister(&panic_notifier_list,
      &data->panic_notifier);
 return 0;
}
