
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_yday; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;
struct asm9260_rtc_priv {scalar_t__ iobase; } ;


 scalar_t__ HW_DOM ;
 scalar_t__ HW_DOW ;
 scalar_t__ HW_DOY ;
 scalar_t__ HW_HOUR ;
 scalar_t__ HW_MIN ;
 scalar_t__ HW_MONTH ;
 scalar_t__ HW_SEC ;
 scalar_t__ HW_YEAR ;
 struct asm9260_rtc_priv* dev_get_drvdata (struct device*) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int asm9260_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct asm9260_rtc_priv *priv = dev_get_drvdata(dev);





 iowrite32(0, priv->iobase + HW_SEC);

 iowrite32(tm->tm_year, priv->iobase + HW_YEAR);
 iowrite32(tm->tm_mon, priv->iobase + HW_MONTH);
 iowrite32(tm->tm_mday, priv->iobase + HW_DOM);
 iowrite32(tm->tm_wday, priv->iobase + HW_DOW);
 iowrite32(tm->tm_yday, priv->iobase + HW_DOY);
 iowrite32(tm->tm_hour, priv->iobase + HW_HOUR);
 iowrite32(tm->tm_min, priv->iobase + HW_MIN);
 iowrite32(tm->tm_sec, priv->iobase + HW_SEC);

 return 0;
}
