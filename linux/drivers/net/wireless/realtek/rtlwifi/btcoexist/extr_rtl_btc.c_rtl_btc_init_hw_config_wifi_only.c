
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wifi_only_cfg {int dummy; } ;
struct rtl_priv {int dummy; } ;


 int exhalbtc_init_hw_config_wifi_only (struct wifi_only_cfg*) ;
 struct wifi_only_cfg* rtl_btc_wifi_only (struct rtl_priv*) ;

void rtl_btc_init_hw_config_wifi_only(struct rtl_priv *rtlpriv)
{
 struct wifi_only_cfg *wifionly_cfg = rtl_btc_wifi_only(rtlpriv);

 if (!wifionly_cfg)
  return;

 exhalbtc_init_hw_config_wifi_only(wifionly_cfg);
}
