
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rtc_dev {int rtc; scalar_t__ csr_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 scalar_t__ RTC_EOI ;
 int RTC_IRQF ;
 scalar_t__ RTC_STAT ;
 int RTC_STAT_BIT ;
 int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t xgene_rtc_interrupt(int irq, void *id)
{
 struct xgene_rtc_dev *pdata = id;


 if (!(readl(pdata->csr_base + RTC_STAT) & RTC_STAT_BIT))
  return IRQ_NONE;


 readl(pdata->csr_base + RTC_EOI);

 rtc_update_irq(pdata->rtc, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
