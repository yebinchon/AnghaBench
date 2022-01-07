
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_mac {scalar_t__ mode; } ;


 scalar_t__ WIRELESS_MODE_B ;
 scalar_t__ WIRELESS_MODE_G ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;

__attribute__((used)) static bool halbtc_legacy(struct rtl_priv *adapter)
{
 struct rtl_priv *rtlpriv = adapter;
 struct rtl_mac *mac = rtl_mac(rtlpriv);

 bool is_legacy = 0;

 if ((mac->mode == WIRELESS_MODE_B) || (mac->mode == WIRELESS_MODE_G))
  is_legacy = 1;

 return is_legacy;
}
