
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int tm_yday; int tm_year; int tm_mday; int tm_mon; int tm_wday; int tm_hour; int tm_min; int tm_sec; } ;
struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;


 int CT0_DOW (int ) ;
 int CT0_HOURS (int ) ;
 int CT0_MINS (int ) ;
 int CT0_SECS (int ) ;
 int CT1_DOM (int ) ;
 int CT1_MONTH (int ) ;
 int CT1_YEAR (int ) ;
 int CT2_DOY (int ) ;
 int LPC24XX_CTIME0 ;
 int LPC24XX_CTIME1 ;
 int LPC24XX_CTIME2 ;
 struct lpc24xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct lpc24xx_rtc*,int ) ;

__attribute__((used)) static int lpc24xx_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct lpc24xx_rtc *rtc = dev_get_drvdata(dev);
 u32 ct0, ct1, ct2;

 ct0 = rtc_readl(rtc, LPC24XX_CTIME0);
 ct1 = rtc_readl(rtc, LPC24XX_CTIME1);
 ct2 = rtc_readl(rtc, LPC24XX_CTIME2);

 tm->tm_sec = CT0_SECS(ct0);
 tm->tm_min = CT0_MINS(ct0);
 tm->tm_hour = CT0_HOURS(ct0);
 tm->tm_wday = CT0_DOW(ct0);
 tm->tm_mon = CT1_MONTH(ct1);
 tm->tm_mday = CT1_DOM(ct1);
 tm->tm_year = CT1_YEAR(ct1);
 tm->tm_yday = CT2_DOY(ct2);

 return 0;
}
