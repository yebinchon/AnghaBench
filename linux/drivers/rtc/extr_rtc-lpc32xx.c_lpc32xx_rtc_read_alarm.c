
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int pending; int time; int enabled; } ;
struct lpc32xx_rtc {int alarm_enabled; } ;
struct device {int dummy; } ;


 int LPC32XX_RTC_INTSTAT ;
 int LPC32XX_RTC_INTSTAT_MATCH0 ;
 int LPC32XX_RTC_MATCH0 ;
 struct lpc32xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct lpc32xx_rtc*,int ) ;
 int rtc_time64_to_tm (int,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int lpc32xx_rtc_read_alarm(struct device *dev,
 struct rtc_wkalrm *wkalrm)
{
 struct lpc32xx_rtc *rtc = dev_get_drvdata(dev);

 rtc_time64_to_tm(rtc_readl(rtc, LPC32XX_RTC_MATCH0), &wkalrm->time);
 wkalrm->enabled = rtc->alarm_enabled;
 wkalrm->pending = !!(rtc_readl(rtc, LPC32XX_RTC_INTSTAT) &
  LPC32XX_RTC_INTSTAT_MATCH0);

 return rtc_valid_tm(&wkalrm->time);
}
