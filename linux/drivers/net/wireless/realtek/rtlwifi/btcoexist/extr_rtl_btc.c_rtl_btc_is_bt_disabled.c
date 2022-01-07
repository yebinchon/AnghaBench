
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ bt_disabled; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;


 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

bool rtl_btc_is_bt_disabled(struct rtl_priv *rtlpriv)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return 1;


 if (btcoexist->bt_info.bt_disabled)
  return 1;
 else
  return 0;
}
