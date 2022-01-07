
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc7301_priv {scalar_t__ irq; int lock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct rtc7301_priv* dev_get_drvdata (struct device*) ;
 int rtc7301_alarm_irq (struct rtc7301_priv*,unsigned int) ;
 int rtc7301_select_bank (struct rtc7301_priv*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rtc7301_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct rtc7301_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;

 if (priv->irq <= 0)
  return -EINVAL;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_select_bank(priv, 1);
 rtc7301_alarm_irq(priv, enabled);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
