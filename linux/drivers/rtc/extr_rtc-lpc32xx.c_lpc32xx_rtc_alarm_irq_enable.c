
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_rtc {int alarm_enabled; int lock; } ;
struct device {int dummy; } ;


 int LPC32XX_RTC_CTRL ;
 int LPC32XX_RTC_CTRL_MATCH0 ;
 struct lpc32xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct lpc32xx_rtc*,int ) ;
 int rtc_writel (struct lpc32xx_rtc*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lpc32xx_rtc_alarm_irq_enable(struct device *dev,
 unsigned int enabled)
{
 struct lpc32xx_rtc *rtc = dev_get_drvdata(dev);
 u32 tmp;

 spin_lock_irq(&rtc->lock);
 tmp = rtc_readl(rtc, LPC32XX_RTC_CTRL);

 if (enabled) {
  rtc->alarm_enabled = 1;
  tmp |= LPC32XX_RTC_CTRL_MATCH0;
 } else {
  rtc->alarm_enabled = 0;
  tmp &= ~LPC32XX_RTC_CTRL_MATCH0;
 }

 rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp);
 spin_unlock_irq(&rtc->lock);

 return 0;
}
