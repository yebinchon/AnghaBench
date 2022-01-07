
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct TYPE_4__ {int bt_ctrl_lps; int bt_lps_on; } ;
struct btc_coexist {TYPE_2__ bt_info; struct rtl_priv* adapter; } ;


 int rtl_lps_leave (int ) ;

__attribute__((used)) static void halbtc_normal_lps(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv;

 rtlpriv = btcoexist->adapter;

 if (btcoexist->bt_info.bt_ctrl_lps) {
  btcoexist->bt_info.bt_lps_on = 0;
  rtl_lps_leave(rtlpriv->mac80211.hw);
  btcoexist->bt_info.bt_ctrl_lps = 0;
 }
}
