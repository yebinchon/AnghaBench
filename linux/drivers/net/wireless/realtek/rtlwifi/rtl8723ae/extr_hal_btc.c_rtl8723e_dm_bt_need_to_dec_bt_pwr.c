
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cstate; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BT_COEX_STATE_DEC_BT_POWER ;
 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 scalar_t__ RT_MEDIA_CONNECT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ mgnt_link_status_query (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool rtl8723e_dm_bt_need_to_dec_bt_pwr(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (mgnt_link_status_query(hw) == RT_MEDIA_CONNECT) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "Need to decrease bt power\n");
  rtlpriv->btcoexist.cstate |=
  BT_COEX_STATE_DEC_BT_POWER;
  return 1;
 }

 rtlpriv->btcoexist.cstate &= ~BT_COEX_STATE_DEC_BT_POWER;
 return 0;
}
