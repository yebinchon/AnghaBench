
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct TYPE_2__ {int rpwm_val; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;


 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

u8 rtl_btc_get_rpwm_val(struct rtl_priv *rtlpriv)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return 0;

 return btcoexist->bt_info.rpwm_val;
}
