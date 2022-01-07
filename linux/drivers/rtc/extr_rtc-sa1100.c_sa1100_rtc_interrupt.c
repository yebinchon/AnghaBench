
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_rtc {int lock; int rtsr; struct rtc_device* rtc; } ;
struct rtc_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 unsigned int RTSR_AL ;
 unsigned int RTSR_ALE ;
 unsigned int RTSR_HZ ;
 unsigned int RTSR_HZE ;
 struct sa1100_rtc* dev_get_drvdata (void*) ;
 unsigned int readl_relaxed (int ) ;
 int rtc_update_irq (struct rtc_device*,int,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned int,int ) ;

__attribute__((used)) static irqreturn_t sa1100_rtc_interrupt(int irq, void *dev_id)
{
 struct sa1100_rtc *info = dev_get_drvdata(dev_id);
 struct rtc_device *rtc = info->rtc;
 unsigned int rtsr;
 unsigned long events = 0;

 spin_lock(&info->lock);

 rtsr = readl_relaxed(info->rtsr);

 writel_relaxed(0, info->rtsr);


 if (rtsr & (RTSR_ALE | RTSR_HZE)) {



  writel_relaxed((RTSR_AL | RTSR_HZ) & (rtsr >> 2), info->rtsr);
 } else {







  writel_relaxed(RTSR_AL | RTSR_HZ, info->rtsr);
 }


 if (rtsr & RTSR_AL)
  rtsr &= ~RTSR_ALE;
 writel_relaxed(rtsr & (RTSR_ALE | RTSR_HZE), info->rtsr);


 if (rtsr & RTSR_AL)
  events |= RTC_AF | RTC_IRQF;
 if (rtsr & RTSR_HZ)
  events |= RTC_UF | RTC_IRQF;

 rtc_update_irq(rtc, 1, events);

 spin_unlock(&info->lock);

 return IRQ_HANDLED;
}
