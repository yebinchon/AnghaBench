
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct lpc32xx_rtc {int lock; scalar_t__ alarm_enabled; } ;
struct device {int dummy; } ;


 int LPC32XX_RTC_CTRL ;
 unsigned long LPC32XX_RTC_CTRL_MATCH0 ;
 int LPC32XX_RTC_INTSTAT ;
 unsigned long LPC32XX_RTC_INTSTAT_MATCH0 ;
 int LPC32XX_RTC_MATCH0 ;
 struct lpc32xx_rtc* dev_get_drvdata (struct device*) ;
 unsigned long rtc_readl (struct lpc32xx_rtc*,int ) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 int rtc_writel (struct lpc32xx_rtc*,int ,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lpc32xx_rtc_set_alarm(struct device *dev,
 struct rtc_wkalrm *wkalrm)
{
 struct lpc32xx_rtc *rtc = dev_get_drvdata(dev);
 unsigned long alarmsecs;
 u32 tmp;

 alarmsecs = rtc_tm_to_time64(&wkalrm->time);

 spin_lock_irq(&rtc->lock);


 tmp = rtc_readl(rtc, LPC32XX_RTC_CTRL);
 rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp & ~LPC32XX_RTC_CTRL_MATCH0);

 rtc_writel(rtc, LPC32XX_RTC_MATCH0, alarmsecs);

 rtc->alarm_enabled = wkalrm->enabled;
 if (wkalrm->enabled) {
  rtc_writel(rtc, LPC32XX_RTC_INTSTAT,
      LPC32XX_RTC_INTSTAT_MATCH0);
  rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp |
      LPC32XX_RTC_CTRL_MATCH0);
 }

 spin_unlock_irq(&rtc->lock);

 return 0;
}
