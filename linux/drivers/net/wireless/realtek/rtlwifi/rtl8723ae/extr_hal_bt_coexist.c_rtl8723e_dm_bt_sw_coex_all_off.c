
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl8723e_dm_bt_sw_coex_all_off_8723a (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723e_dm_bt_sw_coex_all_off(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "rtl8723e_dm_bt_sw_coex_all_off()\n");

 if (rtlpriv->btcoexist.sw_coexist_all_off)
  return;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "rtl8723e_dm_bt_sw_coex_all_off(), real Do\n");
 rtl8723e_dm_bt_sw_coex_all_off_8723a(hw);
 rtlpriv->btcoexist.sw_coexist_all_off = 1;
}
