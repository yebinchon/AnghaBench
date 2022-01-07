
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps80031_rtc {int rtc; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int clear_alarm_int_status (struct device*,struct tps80031_rtc*) ;
 struct tps80031_rtc* dev_get_drvdata (struct device*) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t tps80031_rtc_irq(int irq, void *data)
{
 struct device *dev = data;
 struct tps80031_rtc *rtc = dev_get_drvdata(dev);
 int ret;

 ret = clear_alarm_int_status(dev, rtc);
 if (ret < 0)
  return ret;

 rtc_update_irq(rtc->rtc, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
