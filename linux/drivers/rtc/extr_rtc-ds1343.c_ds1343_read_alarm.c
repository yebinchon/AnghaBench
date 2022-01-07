
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct ds1343_priv {scalar_t__ irq; int irqen; scalar_t__ alarm_sec; scalar_t__ alarm_min; scalar_t__ alarm_hour; scalar_t__ alarm_mday; int mutex; int map; } ;
struct device {int dummy; } ;


 unsigned int DS1343_IRQF0 ;
 int DS1343_STATUS_REG ;
 int EINVAL ;
 int RTC_AF ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ds1343_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int res = 0;
 unsigned int stat;

 if (priv->irq <= 0)
  return -EINVAL;

 mutex_lock(&priv->mutex);

 res = regmap_read(priv->map, DS1343_STATUS_REG, &stat);
 if (res)
  goto out;

 alarm->enabled = !!(priv->irqen & RTC_AF);
 alarm->pending = !!(stat & DS1343_IRQF0);

 alarm->time.tm_sec = priv->alarm_sec < 0 ? 0 : priv->alarm_sec;
 alarm->time.tm_min = priv->alarm_min < 0 ? 0 : priv->alarm_min;
 alarm->time.tm_hour = priv->alarm_hour < 0 ? 0 : priv->alarm_hour;
 alarm->time.tm_mday = priv->alarm_mday < 0 ? 0 : priv->alarm_mday;

out:
 mutex_unlock(&priv->mutex);
 return res;
}
