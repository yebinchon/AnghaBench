
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_rtc {int lock; int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_PF ;
 unsigned long RTC_UF ;
 int RTSR ;
 int RTSR_HZ ;
 int RTSR_HZE ;
 int RTSR_PIAL ;
 int RTSR_PIALE ;
 int RTSR_RDAL1 ;
 int RTSR_RDALE1 ;
 int RTSR_TRIG_MASK ;
 struct pxa_rtc* dev_get_drvdata (void*) ;
 int rtc_readl (struct pxa_rtc*,int ) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int rtc_writel (struct pxa_rtc*,int ,int) ;
 int rtsr_clear_bits (struct pxa_rtc*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t pxa_rtc_irq(int irq, void *dev_id)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev_id);
 u32 rtsr;
 unsigned long events = 0;

 spin_lock(&pxa_rtc->lock);


 rtsr = rtc_readl(pxa_rtc, RTSR);
 rtc_writel(pxa_rtc, RTSR, rtsr);


 rtsr_clear_bits(pxa_rtc, RTSR_RDALE1 | RTSR_PIALE | RTSR_HZE);


 if (rtsr & RTSR_RDAL1)
  rtsr &= ~RTSR_RDALE1;


 if (rtsr & RTSR_RDAL1)
  events |= RTC_AF | RTC_IRQF;
 if (rtsr & RTSR_HZ)
  events |= RTC_UF | RTC_IRQF;
 if (rtsr & RTSR_PIAL)
  events |= RTC_PF | RTC_IRQF;

 rtc_update_irq(pxa_rtc->rtc, 1, events);


 rtc_writel(pxa_rtc, RTSR, rtsr & ~RTSR_TRIG_MASK);

 spin_unlock(&pxa_rtc->lock);
 return IRQ_HANDLED;
}
