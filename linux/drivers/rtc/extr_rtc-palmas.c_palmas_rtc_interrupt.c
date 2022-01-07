
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_rtc {int rtc; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 int dev_err (struct device*,char*,int) ;
 int palmas_clear_interrupts (struct device*) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t palmas_rtc_interrupt(int irq, void *context)
{
 struct palmas_rtc *palmas_rtc = context;
 struct device *dev = palmas_rtc->dev;
 int ret;

 ret = palmas_clear_interrupts(dev);
 if (ret < 0) {
  dev_err(dev, "RTC interrupt clear failed, err = %d\n", ret);
  return IRQ_NONE;
 }

 rtc_update_irq(palmas_rtc->rtc, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
