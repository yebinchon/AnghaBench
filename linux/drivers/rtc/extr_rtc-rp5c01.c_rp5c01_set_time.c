
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; int tm_mon; int tm_year; } ;
struct rp5c01_priv {int lock; } ;
struct device {int dummy; } ;


 int RP5C01_10_DAY ;
 int RP5C01_10_HOUR ;
 int RP5C01_10_MINUTE ;
 int RP5C01_10_MONTH ;
 int RP5C01_10_SECOND ;
 int RP5C01_10_YEAR ;
 int RP5C01_1_DAY ;
 int RP5C01_1_HOUR ;
 int RP5C01_1_MINUTE ;
 int RP5C01_1_MONTH ;
 int RP5C01_1_SECOND ;
 int RP5C01_1_YEAR ;
 int RP5C01_DAY_OF_WEEK ;
 struct rp5c01_priv* dev_get_drvdata (struct device*) ;
 int rp5c01_lock (struct rp5c01_priv*) ;
 int rp5c01_unlock (struct rp5c01_priv*) ;
 int rp5c01_write (struct rp5c01_priv*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rp5c01_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rp5c01_priv *priv = dev_get_drvdata(dev);

 spin_lock_irq(&priv->lock);
 rp5c01_lock(priv);

 rp5c01_write(priv, tm->tm_sec / 10, RP5C01_10_SECOND);
 rp5c01_write(priv, tm->tm_sec % 10, RP5C01_1_SECOND);
 rp5c01_write(priv, tm->tm_min / 10, RP5C01_10_MINUTE);
 rp5c01_write(priv, tm->tm_min % 10, RP5C01_1_MINUTE);
 rp5c01_write(priv, tm->tm_hour / 10, RP5C01_10_HOUR);
 rp5c01_write(priv, tm->tm_hour % 10, RP5C01_1_HOUR);
 rp5c01_write(priv, tm->tm_mday / 10, RP5C01_10_DAY);
 rp5c01_write(priv, tm->tm_mday % 10, RP5C01_1_DAY);
 if (tm->tm_wday != -1)
  rp5c01_write(priv, tm->tm_wday, RP5C01_DAY_OF_WEEK);
 rp5c01_write(priv, (tm->tm_mon + 1) / 10, RP5C01_10_MONTH);
 rp5c01_write(priv, (tm->tm_mon + 1) % 10, RP5C01_1_MONTH);
 if (tm->tm_year >= 100)
  tm->tm_year -= 100;
 rp5c01_write(priv, tm->tm_year / 10, RP5C01_10_YEAR);
 rp5c01_write(priv, tm->tm_year % 10, RP5C01_1_YEAR);

 rp5c01_unlock(priv);
 spin_unlock_irq(&priv->lock);
 return 0;
}
