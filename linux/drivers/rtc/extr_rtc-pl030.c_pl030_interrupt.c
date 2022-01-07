
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl030_rtc {scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ RTC_EOI ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t pl030_interrupt(int irq, void *dev_id)
{
 struct pl030_rtc *rtc = dev_id;
 writel(0, rtc->base + RTC_EOI);
 return IRQ_HANDLED;
}
