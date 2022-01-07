
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_yday; int tm_mon; int tm_year; } ;
struct lpc24xx_rtc {int dummy; } ;
struct device {int dummy; } ;


 int LPC178X_CCALEN ;
 int LPC24XX_CCR ;
 int LPC24XX_CLKEN ;
 int LPC24XX_DOM ;
 int LPC24XX_DOW ;
 int LPC24XX_DOY ;
 int LPC24XX_HOUR ;
 int LPC24XX_MIN ;
 int LPC24XX_MONTH ;
 int LPC24XX_SEC ;
 int LPC24XX_YEAR ;
 struct lpc24xx_rtc* dev_get_drvdata (struct device*) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int) ;

__attribute__((used)) static int lpc24xx_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct lpc24xx_rtc *rtc = dev_get_drvdata(dev);


 rtc_writel(rtc, LPC24XX_CCR, LPC178X_CCALEN);

 rtc_writel(rtc, LPC24XX_SEC, tm->tm_sec);
 rtc_writel(rtc, LPC24XX_MIN, tm->tm_min);
 rtc_writel(rtc, LPC24XX_HOUR, tm->tm_hour);
 rtc_writel(rtc, LPC24XX_DOW, tm->tm_wday);
 rtc_writel(rtc, LPC24XX_DOM, tm->tm_mday);
 rtc_writel(rtc, LPC24XX_DOY, tm->tm_yday);
 rtc_writel(rtc, LPC24XX_MONTH, tm->tm_mon);
 rtc_writel(rtc, LPC24XX_YEAR, tm->tm_year);

 rtc_writel(rtc, LPC24XX_CCR, LPC24XX_CLKEN | LPC178X_CCALEN);

 return 0;
}
