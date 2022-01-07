
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {int irq_enabled; int irq; } ;
struct device {int dummy; } ;


 struct st_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int st_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct st_rtc *rtc = dev_get_drvdata(dev);

 if (enabled && !rtc->irq_enabled) {
  enable_irq(rtc->irq);
  rtc->irq_enabled = 1;
 } else if (!enabled && rtc->irq_enabled) {
  disable_irq(rtc->irq);
  rtc->irq_enabled = 0;
 }

 return 0;
}
