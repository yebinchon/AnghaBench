
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_phy {int current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int BTC_WIFI_BW_HT20 ;
 int BTC_WIFI_BW_HT40 ;
 int BTC_WIFI_BW_HT80 ;
 int BTC_WIFI_BW_LEGACY ;



 scalar_t__ halbtc_legacy (struct rtl_priv*) ;

__attribute__((used)) static u32 halbtc_get_wifi_bw(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u32 wifi_bw = BTC_WIFI_BW_HT20;

 if (halbtc_legacy(rtlpriv)) {
  wifi_bw = BTC_WIFI_BW_LEGACY;
 } else {
  switch (rtlphy->current_chan_bw) {
  case 130:
   wifi_bw = BTC_WIFI_BW_HT20;
   break;
  case 129:
   wifi_bw = BTC_WIFI_BW_HT40;
   break;
  case 128:
   wifi_bw = BTC_WIFI_BW_HT80;
   break;
  }
 }

 return wifi_bw;
}
