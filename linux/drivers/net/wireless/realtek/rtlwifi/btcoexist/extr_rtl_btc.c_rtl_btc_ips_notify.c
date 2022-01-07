
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;


 int ERFON ;
 int exhalbtc_ips_notify (struct btc_coexist*,int ) ;
 int exhalbtc_scan_notify (struct btc_coexist*,int) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

void rtl_btc_ips_notify(struct rtl_priv *rtlpriv, u8 type)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return;

 exhalbtc_ips_notify(btcoexist, type);

 if (type == ERFON) {



  exhalbtc_scan_notify(btcoexist, 1);
  exhalbtc_scan_notify(btcoexist, 0);
 }
}
