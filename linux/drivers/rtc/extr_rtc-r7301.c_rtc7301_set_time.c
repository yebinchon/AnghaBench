
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc7301_priv {int lock; } ;
struct device {int dummy; } ;


 struct rtc7301_priv* dev_get_drvdata (struct device*) ;
 int rtc7301_select_bank (struct rtc7301_priv*,int ) ;
 int rtc7301_start (struct rtc7301_priv*) ;
 int rtc7301_stop (struct rtc7301_priv*) ;
 int rtc7301_write_time (struct rtc7301_priv*,struct rtc_time*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int rtc7301_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rtc7301_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_stop(priv);
 udelay(300);
 rtc7301_select_bank(priv, 0);
 rtc7301_write_time(priv, tm, 0);
 rtc7301_start(priv);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
