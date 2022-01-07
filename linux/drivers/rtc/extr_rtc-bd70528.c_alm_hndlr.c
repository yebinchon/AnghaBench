
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_PF ;
 int rtc_update_irq (struct rtc_device*,int,int) ;

__attribute__((used)) static irqreturn_t alm_hndlr(int irq, void *data)
{
 struct rtc_device *rtc = data;

 rtc_update_irq(rtc, 1, RTC_IRQF | RTC_AF | RTC_PF);
 return IRQ_HANDLED;
}
