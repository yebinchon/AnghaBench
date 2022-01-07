
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int da9055_rtc_enable_alarm (struct da9055_rtc*,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t da9055_rtc_alm_irq(int irq, void *data)
{
 struct da9055_rtc *rtc = data;

 da9055_rtc_enable_alarm(rtc, 0);
 rtc_update_irq(rtc->rtc, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
