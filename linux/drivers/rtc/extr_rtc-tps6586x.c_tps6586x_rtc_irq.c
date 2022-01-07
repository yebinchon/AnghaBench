
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t tps6586x_rtc_irq(int irq, void *data)
{
 struct tps6586x_rtc *rtc = data;

 rtc_update_irq(rtc->rtc, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
