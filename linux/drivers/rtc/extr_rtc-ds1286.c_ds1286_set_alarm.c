
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {TYPE_1__ time; } ;
struct ds1286_priv {int lock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_HOURS_ALARM ;
 int RTC_MINUTES_ALARM ;
 unsigned char bin2bcd (unsigned char) ;
 struct ds1286_priv* dev_get_drvdata (struct device*) ;
 int ds1286_rtc_write (struct ds1286_priv*,unsigned char,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ds1286_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct ds1286_priv *priv = dev_get_drvdata(dev);
 unsigned char hrs, min, sec;

 hrs = alm->time.tm_hour;
 min = alm->time.tm_min;
 sec = alm->time.tm_sec;

 if (hrs >= 24)
  hrs = 0xff;

 if (min >= 60)
  min = 0xff;

 if (sec != 0)
  return -EINVAL;

 min = bin2bcd(min);
 hrs = bin2bcd(hrs);

 spin_lock(&priv->lock);
 ds1286_rtc_write(priv, hrs, RTC_HOURS_ALARM);
 ds1286_rtc_write(priv, min, RTC_MINUTES_ALARM);
 spin_unlock(&priv->lock);

 return 0;
}
