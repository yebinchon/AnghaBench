
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wifi_only_cfg {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;


 scalar_t__ BAND_ON_5G ;
 int exhalbtc_scan_notify_wifi_only (struct wifi_only_cfg*,int) ;
 struct wifi_only_cfg* rtl_btc_wifi_only (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;

void rtl_btc_scan_notify_wifi_only(struct rtl_priv *rtlpriv, u8 scantype)
{
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 struct wifi_only_cfg *wifionly_cfg = rtl_btc_wifi_only(rtlpriv);
 u8 is_5g = (rtlhal->current_bandtype == BAND_ON_5G);

 if (!wifionly_cfg)
  return;

 exhalbtc_scan_notify_wifi_only(wifionly_cfg, is_5g);
}
