
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;
 int sprd_rtc_clear_alarm_ints (struct sprd_rtc*) ;

__attribute__((used)) static irqreturn_t sprd_rtc_handler(int irq, void *dev_id)
{
 struct sprd_rtc *rtc = dev_id;
 int ret;

 ret = sprd_rtc_clear_alarm_ints(rtc);
 if (ret)
  return IRQ_RETVAL(ret);

 rtc_update_irq(rtc->rtc, 1, RTC_AF | RTC_IRQF);
 return IRQ_HANDLED;
}
