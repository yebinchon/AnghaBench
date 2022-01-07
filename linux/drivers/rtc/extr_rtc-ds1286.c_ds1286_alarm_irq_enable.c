
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1286_priv {int lock; } ;
struct device {int dummy; } ;


 int RTC_CMD ;
 unsigned char RTC_TDM ;
 struct ds1286_priv* dev_get_drvdata (struct device*) ;
 unsigned char ds1286_rtc_read (struct ds1286_priv*,int ) ;
 int ds1286_rtc_write (struct ds1286_priv*,unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ds1286_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1286_priv *priv = dev_get_drvdata(dev);
 unsigned long flags;
 unsigned char val;


 spin_lock_irqsave(&priv->lock, flags);
 val = ds1286_rtc_read(priv, RTC_CMD);
 if (enabled)
  val &= ~RTC_TDM;
 else
  val |= RTC_TDM;
 ds1286_rtc_write(priv, val, RTC_CMD);
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
