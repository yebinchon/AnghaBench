
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct rtc7301_priv {scalar_t__ irq; int lock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC7301_ALARM_CONTROL ;
 int RTC7301_ALARM_CONTROL_AF ;
 int RTC7301_ALARM_CONTROL_AIE ;
 struct rtc7301_priv* dev_get_drvdata (struct device*) ;
 int rtc7301_get_time (struct rtc7301_priv*,int *,int) ;
 int rtc7301_read (struct rtc7301_priv*,int ) ;
 int rtc7301_select_bank (struct rtc7301_priv*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rtc7301_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct rtc7301_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;
 u8 alrm_ctrl;

 if (priv->irq <= 0)
  return -EINVAL;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_select_bank(priv, 1);
 rtc7301_get_time(priv, &alarm->time, 1);

 alrm_ctrl = rtc7301_read(priv, RTC7301_ALARM_CONTROL);

 alarm->enabled = !!(alrm_ctrl & RTC7301_ALARM_CONTROL_AIE);
 alarm->pending = !!(alrm_ctrl & RTC7301_ALARM_CONTROL_AF);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
