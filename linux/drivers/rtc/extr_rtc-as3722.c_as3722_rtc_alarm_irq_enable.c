
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct as3722_rtc {int irq_enable; int alarm_irq; } ;


 struct as3722_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int as3722_rtc_alarm_irq_enable(struct device *dev,
  unsigned int enabled)
{
 struct as3722_rtc *as3722_rtc = dev_get_drvdata(dev);

 if (enabled && !as3722_rtc->irq_enable) {
  enable_irq(as3722_rtc->alarm_irq);
  as3722_rtc->irq_enable = 1;
 } else if (!enabled && as3722_rtc->irq_enable) {
  disable_irq(as3722_rtc->alarm_irq);
  as3722_rtc->irq_enable = 0;
 }
 return 0;
}
