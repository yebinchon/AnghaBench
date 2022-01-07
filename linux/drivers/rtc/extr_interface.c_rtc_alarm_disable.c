
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct rtc_device {TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* alarm_irq_enable ) (int ,int) ;} ;


 int stub1 (int ,int) ;
 int trace_rtc_alarm_irq_enable (int ,int ) ;

__attribute__((used)) static void rtc_alarm_disable(struct rtc_device *rtc)
{
 if (!rtc->ops || !rtc->ops->alarm_irq_enable)
  return;

 rtc->ops->alarm_irq_enable(rtc->dev.parent, 0);
 trace_rtc_alarm_irq_enable(0, 0);
}
