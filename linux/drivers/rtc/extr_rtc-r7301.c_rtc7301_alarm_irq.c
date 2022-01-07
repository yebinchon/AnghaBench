
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc7301_priv {int dummy; } ;


 int RTC7301_ALARM_CONTROL ;
 int RTC7301_ALARM_CONTROL_AF ;
 int RTC7301_ALARM_CONTROL_AIE ;
 int rtc7301_update_bits (struct rtc7301_priv*,int ,int,int) ;

__attribute__((used)) static void rtc7301_alarm_irq(struct rtc7301_priv *priv, unsigned int enabled)
{
 rtc7301_update_bits(priv, RTC7301_ALARM_CONTROL,
       RTC7301_ALARM_CONTROL_AF |
       RTC7301_ALARM_CONTROL_AIE,
       enabled ? RTC7301_ALARM_CONTROL_AIE : 0);
}
