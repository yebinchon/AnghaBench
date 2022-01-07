
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;




 int BTC_NOT_SWITCH ;
 int BTC_SWITCH_TO_24G ;
 int BTC_SWITCH_TO_24G_NOFORSCAN ;
 int BTC_SWITCH_TO_5G ;
 int exhalbtc_switch_band_notify (struct btc_coexist*,int) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

void rtl_btc_switch_band_notify(struct rtl_priv *rtlpriv, u8 band_type,
    bool scanning)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);
 u8 type = BTC_NOT_SWITCH;

 if (!btcoexist)
  return;

 switch (band_type) {
 case 129:
  if (scanning)
   type = BTC_SWITCH_TO_24G;
  else
   type = BTC_SWITCH_TO_24G_NOFORSCAN;
  break;

 case 128:
  type = BTC_SWITCH_TO_5G;
  break;
 }

 if (type != BTC_NOT_SWITCH)
  exhalbtc_switch_band_notify(btcoexist, type);
}
