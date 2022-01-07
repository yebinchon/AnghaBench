
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc7301_priv {int dummy; } ;


 int RTC7301_CONTROL ;
 int RTC7301_CONTROL_STOP ;
 int rtc7301_update_bits (struct rtc7301_priv*,int ,int ,int ) ;

__attribute__((used)) static void rtc7301_stop(struct rtc7301_priv *priv)
{
 rtc7301_update_bits(priv, RTC7301_CONTROL, RTC7301_CONTROL_STOP,
       RTC7301_CONTROL_STOP);
}
