
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; } ;
struct device {int dummy; } ;


 int opal_set_tpo_time (struct device*,struct rtc_wkalrm*) ;

__attribute__((used)) static int opal_tpo_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct rtc_wkalrm alarm = { .enabled = 0 };






 return enabled ? 0 : opal_set_tpo_time(dev, &alarm);
}
