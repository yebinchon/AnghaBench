
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc7301_priv {int lock; } ;
struct device {int dummy; } ;


 struct rtc7301_priv* dev_get_drvdata (struct device*) ;
 int rtc7301_get_time (struct rtc7301_priv*,struct rtc_time*,int) ;
 int rtc7301_select_bank (struct rtc7301_priv*,int ) ;
 int rtc7301_wait_while_busy (struct rtc7301_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rtc7301_read_time(struct device *dev, struct rtc_time *tm)
{
 struct rtc7301_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;
 int err;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_select_bank(priv, 0);

 err = rtc7301_wait_while_busy(priv);
 if (!err)
  rtc7301_get_time(priv, tm, 0);

 spin_unlock_irqrestore(&priv->lock, flags);

 return err;
}
