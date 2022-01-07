
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int dummy; } ;
struct lpc32xx_rtc {int lock; } ;
struct device {int dummy; } ;


 int LPC32XX_RTC_CTRL ;
 int LPC32XX_RTC_CTRL_CNTR_DIS ;
 int LPC32XX_RTC_DCOUNT ;
 int LPC32XX_RTC_UCOUNT ;
 struct lpc32xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct lpc32xx_rtc*,int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int rtc_writel (struct lpc32xx_rtc*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lpc32xx_rtc_set_time(struct device *dev, struct rtc_time *time)
{
 struct lpc32xx_rtc *rtc = dev_get_drvdata(dev);
 u32 secs = rtc_tm_to_time64(time);
 u32 tmp;

 spin_lock_irq(&rtc->lock);


 tmp = rtc_readl(rtc, LPC32XX_RTC_CTRL);
 rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp | LPC32XX_RTC_CTRL_CNTR_DIS);
 rtc_writel(rtc, LPC32XX_RTC_UCOUNT, secs);
 rtc_writel(rtc, LPC32XX_RTC_DCOUNT, 0xFFFFFFFF - secs);
 rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp &= ~LPC32XX_RTC_CTRL_CNTR_DIS);

 spin_unlock_irq(&rtc->lock);

 return 0;
}
