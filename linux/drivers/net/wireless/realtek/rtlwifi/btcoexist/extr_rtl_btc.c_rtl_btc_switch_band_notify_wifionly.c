
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wifi_only_cfg {int dummy; } ;
struct rtl_priv {int dummy; } ;


 scalar_t__ BAND_ON_5G ;
 int exhalbtc_switch_band_notify_wifi_only (struct wifi_only_cfg*,scalar_t__) ;
 struct wifi_only_cfg* rtl_btc_wifi_only (struct rtl_priv*) ;

void rtl_btc_switch_band_notify_wifionly(struct rtl_priv *rtlpriv, u8 band_type,
      bool scanning)
{
 struct wifi_only_cfg *wifionly_cfg = rtl_btc_wifi_only(rtlpriv);
 u8 is_5g = (band_type == BAND_ON_5G);

 if (!wifionly_cfg)
  return;

 exhalbtc_switch_band_notify_wifi_only(wifionly_cfg, is_5g);
}
