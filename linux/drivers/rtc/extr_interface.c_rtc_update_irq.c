
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct rtc_device {int irqwork; TYPE_1__ dev; } ;


 scalar_t__ IS_ERR_OR_NULL (struct rtc_device*) ;
 int pm_stay_awake (int ) ;
 int schedule_work (int *) ;

void rtc_update_irq(struct rtc_device *rtc,
      unsigned long num, unsigned long events)
{
 if (IS_ERR_OR_NULL(rtc))
  return;

 pm_stay_awake(rtc->dev.parent);
 schedule_work(&rtc->irqwork);
}
