
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_rtc_drv {int rtc; int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 int RTC_STATUS ;
 unsigned long SIRFSOC_RTC_AL0 ;
 unsigned long SIRFSOC_RTC_AL0E ;
 int rtc_update_irq (int ,int,unsigned long) ;
 unsigned long sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;
 int sirfsoc_rtc_writel (struct sirfsoc_rtc_drv*,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t sirfsoc_rtc_irq_handler(int irq, void *pdata)
{
 struct sirfsoc_rtc_drv *rtcdrv = pdata;
 unsigned long rtc_status_reg = 0x0;
 unsigned long events = 0x0;

 spin_lock(&rtcdrv->lock);

 rtc_status_reg = sirfsoc_rtc_readl(rtcdrv, RTC_STATUS);




 if (rtc_status_reg & SIRFSOC_RTC_AL0) {




  rtc_status_reg &= ~0x07;

  rtc_status_reg |= (SIRFSOC_RTC_AL0);

  rtc_status_reg &= ~(SIRFSOC_RTC_AL0E);
 }

 sirfsoc_rtc_writel(rtcdrv, RTC_STATUS, rtc_status_reg);

 spin_unlock(&rtcdrv->lock);




 events |= RTC_IRQF | RTC_AF;
 rtc_update_irq(rtcdrv->rtc, 1, events);

 return IRQ_HANDLED;
}
