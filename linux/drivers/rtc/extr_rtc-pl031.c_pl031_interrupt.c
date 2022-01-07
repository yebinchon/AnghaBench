
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl031_local {int rtc; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 unsigned long RTC_BIT_AI ;
 scalar_t__ RTC_ICR ;
 unsigned long RTC_IRQF ;
 scalar_t__ RTC_MIS ;
 unsigned long readl (scalar_t__) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t pl031_interrupt(int irq, void *dev_id)
{
 struct pl031_local *ldata = dev_id;
 unsigned long rtcmis;
 unsigned long events = 0;

 rtcmis = readl(ldata->base + RTC_MIS);
 if (rtcmis & RTC_BIT_AI) {
  writel(RTC_BIT_AI, ldata->base + RTC_ICR);
  events |= (RTC_AF | RTC_IRQF);
  rtc_update_irq(ldata->rtc, 1, events);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
