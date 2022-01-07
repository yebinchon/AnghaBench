
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BT_BB_BACKOFF_OFF ;
 scalar_t__ BT_BB_BACKOFF_ON ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

void rtl8723e_dm_bt_bb_back_off_level(struct ieee80211_hw *hw, u8 type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (type == BT_BB_BACKOFF_OFF) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
    "[BT]BBBackOffLevel Off!\n");
  rtl_write_dword(rtlpriv, 0xc04, 0x3a05611);
 } else if (type == BT_BB_BACKOFF_ON) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
    "[BT]BBBackOffLevel On!\n");
  rtl_write_dword(rtlpriv, 0xc04, 0x3a07611);
  rtlpriv->btcoexist.sw_coexist_all_off = 0;
 }
}
