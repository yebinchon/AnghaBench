
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_rtc {int rtc; int lock; scalar_t__ alarm_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LPC32XX_RTC_CTRL ;
 int LPC32XX_RTC_CTRL_MATCH0 ;
 int LPC32XX_RTC_INTSTAT ;
 int LPC32XX_RTC_INTSTAT_MATCH0 ;
 int LPC32XX_RTC_MATCH0 ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_readl (struct lpc32xx_rtc*,int ) ;
 int rtc_update_irq (int ,int,int) ;
 int rtc_writel (struct lpc32xx_rtc*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t lpc32xx_rtc_alarm_interrupt(int irq, void *dev)
{
 struct lpc32xx_rtc *rtc = dev;

 spin_lock(&rtc->lock);


 rtc_writel(rtc, LPC32XX_RTC_CTRL,
  rtc_readl(rtc, LPC32XX_RTC_CTRL) &
     ~LPC32XX_RTC_CTRL_MATCH0);
 rtc->alarm_enabled = 0;





 rtc_writel(rtc, LPC32XX_RTC_MATCH0, 0xFFFFFFFF);
 rtc_writel(rtc, LPC32XX_RTC_INTSTAT, LPC32XX_RTC_INTSTAT_MATCH0);

 spin_unlock(&rtc->lock);

 rtc_update_irq(rtc->rtc, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
