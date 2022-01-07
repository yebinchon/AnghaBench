
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vt8500_rtc {int rtc; int lock; scalar_t__ regbase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 scalar_t__ VT8500_RTC_IS ;
 int VT8500_RTC_IS_ALARM ;
 int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t vt8500_rtc_irq(int irq, void *dev_id)
{
 struct vt8500_rtc *vt8500_rtc = dev_id;
 u32 isr;
 unsigned long events = 0;

 spin_lock(&vt8500_rtc->lock);


 isr = readl(vt8500_rtc->regbase + VT8500_RTC_IS);
 writel(isr, vt8500_rtc->regbase + VT8500_RTC_IS);

 spin_unlock(&vt8500_rtc->lock);

 if (isr & VT8500_RTC_IS_ALARM)
  events |= RTC_AF | RTC_IRQF;

 rtc_update_irq(vt8500_rtc->rtc, 1, events);

 return IRQ_HANDLED;
}
