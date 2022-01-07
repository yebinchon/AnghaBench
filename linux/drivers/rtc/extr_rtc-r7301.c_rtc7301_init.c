
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc7301_priv {int lock; } ;


 int RTC7301_TIMER_CONTROL ;
 int rtc7301_select_bank (struct rtc7301_priv*,int) ;
 int rtc7301_write (struct rtc7301_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtc7301_init(struct rtc7301_priv *priv)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 rtc7301_select_bank(priv, 2);
 rtc7301_write(priv, 0, RTC7301_TIMER_CONTROL);

 spin_unlock_irqrestore(&priv->lock, flags);
}
