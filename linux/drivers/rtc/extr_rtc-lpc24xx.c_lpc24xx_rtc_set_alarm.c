
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mon; int tm_yday; int tm_wday; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;


 int LPC24XX_ALARM_DISABLE ;
 int LPC24XX_ALDOM ;
 int LPC24XX_ALDOW ;
 int LPC24XX_ALDOY ;
 int LPC24XX_ALHOUR ;
 int LPC24XX_ALMIN ;
 int LPC24XX_ALMON ;
 int LPC24XX_ALSEC ;
 int LPC24XX_ALYEAR ;
 int LPC24XX_AMR ;
 struct lpc24xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int ) ;

__attribute__((used)) static int lpc24xx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct lpc24xx_rtc *rtc = dev_get_drvdata(dev);
 struct rtc_time *tm = &wkalrm->time;


 rtc_writel(rtc, LPC24XX_AMR, LPC24XX_ALARM_DISABLE);

 rtc_writel(rtc, LPC24XX_ALSEC, tm->tm_sec);
 rtc_writel(rtc, LPC24XX_ALMIN, tm->tm_min);
 rtc_writel(rtc, LPC24XX_ALHOUR, tm->tm_hour);
 rtc_writel(rtc, LPC24XX_ALDOM, tm->tm_mday);
 rtc_writel(rtc, LPC24XX_ALDOW, tm->tm_wday);
 rtc_writel(rtc, LPC24XX_ALDOY, tm->tm_yday);
 rtc_writel(rtc, LPC24XX_ALMON, tm->tm_mon);
 rtc_writel(rtc, LPC24XX_ALYEAR, tm->tm_year);

 if (wkalrm->enabled)
  rtc_writel(rtc, LPC24XX_AMR, 0);

 return 0;
}
