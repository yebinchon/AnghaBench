
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc7301_priv {int bank; } ;


 int BIT (int) ;
 int RTC7301_CONTROL ;
 int RTC7301_CONTROL_BANK_SEL_0 ;
 int RTC7301_CONTROL_BANK_SEL_1 ;
 int rtc7301_update_bits (struct rtc7301_priv*,int ,int,int) ;

__attribute__((used)) static void rtc7301_select_bank(struct rtc7301_priv *priv, u8 bank)
{
 u8 val = 0;

 if (bank == priv->bank)
  return;

 if (bank & BIT(0))
  val |= RTC7301_CONTROL_BANK_SEL_0;
 if (bank & BIT(1))
  val |= RTC7301_CONTROL_BANK_SEL_1;

 rtc7301_update_bits(priv, RTC7301_CONTROL,
       RTC7301_CONTROL_BANK_SEL_0 |
       RTC7301_CONTROL_BANK_SEL_1, val);

 priv->bank = bank;
}
