
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t as3722_alarm_irq(int irq, void *data)
{
 struct as3722_rtc *as3722_rtc = data;

 rtc_update_irq(as3722_rtc->rtc, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
