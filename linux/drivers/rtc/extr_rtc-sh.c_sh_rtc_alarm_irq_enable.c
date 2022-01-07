
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int sh_rtc_setaie (struct device*,unsigned int) ;

__attribute__((used)) static int sh_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 sh_rtc_setaie(dev, enabled);
 return 0;
}
