
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {scalar_t__ irq; int mutex; int irqen; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_AF ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int ds1343_update_alarm (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ds1343_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int res = 0;

 if (priv->irq <= 0)
  return -EINVAL;

 mutex_lock(&priv->mutex);

 if (enabled)
  priv->irqen |= RTC_AF;
 else
  priv->irqen &= ~RTC_AF;

 res = ds1343_update_alarm(dev);

 mutex_unlock(&priv->mutex);

 return res;
}
