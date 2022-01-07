
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x_rtc {int irq_en; int irq; } ;
struct device {int dummy; } ;


 struct tps6586x_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int tps6586x_rtc_alarm_irq_enable(struct device *dev,
    unsigned int enabled)
{
 struct tps6586x_rtc *rtc = dev_get_drvdata(dev);

 if (enabled && !rtc->irq_en) {
  enable_irq(rtc->irq);
  rtc->irq_en = 1;
 } else if (!enabled && rtc->irq_en) {
  disable_irq(rtc->irq);
  rtc->irq_en = 0;
 }
 return 0;
}
