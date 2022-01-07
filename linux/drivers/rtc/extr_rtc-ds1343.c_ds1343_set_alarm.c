
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds1343_priv {scalar_t__ irq; int mutex; int irqen; int alarm_mday; int alarm_hour; int alarm_min; int alarm_sec; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_AF ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int ds1343_update_alarm (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ds1343_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int res = 0;

 if (priv->irq <= 0)
  return -EINVAL;

 mutex_lock(&priv->mutex);

 priv->alarm_sec = alarm->time.tm_sec;
 priv->alarm_min = alarm->time.tm_min;
 priv->alarm_hour = alarm->time.tm_hour;
 priv->alarm_mday = alarm->time.tm_mday;

 if (alarm->enabled)
  priv->irqen |= RTC_AF;

 res = ds1343_update_alarm(dev);

 mutex_unlock(&priv->mutex);

 return res;
}
