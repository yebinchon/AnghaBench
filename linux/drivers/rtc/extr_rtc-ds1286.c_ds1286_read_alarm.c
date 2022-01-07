
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_min; int tm_hour; int tm_wday; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {TYPE_1__ time; } ;
struct ds1286_priv {int lock; } ;
struct device {int dummy; } ;


 int RTC_CMD ;
 int RTC_DAY_ALARM ;
 int RTC_HOURS_ALARM ;
 int RTC_MINUTES_ALARM ;
 void* bcd2bin (int) ;
 struct ds1286_priv* dev_get_drvdata (struct device*) ;
 int ds1286_rtc_read (struct ds1286_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ds1286_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct ds1286_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;





 spin_lock_irqsave(&priv->lock, flags);
 alm->time.tm_min = ds1286_rtc_read(priv, RTC_MINUTES_ALARM) & 0x7f;
 alm->time.tm_hour = ds1286_rtc_read(priv, RTC_HOURS_ALARM) & 0x1f;
 alm->time.tm_wday = ds1286_rtc_read(priv, RTC_DAY_ALARM) & 0x07;
 ds1286_rtc_read(priv, RTC_CMD);
 spin_unlock_irqrestore(&priv->lock, flags);

 alm->time.tm_min = bcd2bin(alm->time.tm_min);
 alm->time.tm_hour = bcd2bin(alm->time.tm_hour);
 alm->time.tm_sec = 0;
 return 0;
}
