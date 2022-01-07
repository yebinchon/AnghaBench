
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int parent; } ;
struct rtc_device {TYPE_1__ dev; } ;
struct rtc7301_priv {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC7301_ALARM_CONTROL ;
 int RTC7301_ALARM_CONTROL_AF ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct rtc7301_priv* dev_get_drvdata (int ) ;
 int rtc7301_alarm_irq (struct rtc7301_priv*,int) ;
 int rtc7301_read (struct rtc7301_priv*,int ) ;
 int rtc7301_select_bank (struct rtc7301_priv*,int) ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t rtc7301_irq_handler(int irq, void *dev_id)
{
 struct rtc_device *rtc = dev_id;
 struct rtc7301_priv *priv = dev_get_drvdata(rtc->dev.parent);
 unsigned long flags;
 irqreturn_t ret = IRQ_NONE;
 u8 alrm_ctrl;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_select_bank(priv, 1);

 alrm_ctrl = rtc7301_read(priv, RTC7301_ALARM_CONTROL);
 if (alrm_ctrl & RTC7301_ALARM_CONTROL_AF) {
  ret = IRQ_HANDLED;
  rtc7301_alarm_irq(priv, 0);
  rtc_update_irq(rtc, 1, RTC_IRQF | RTC_AF);
 }

 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
