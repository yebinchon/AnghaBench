
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long entry_min_undec_sm_pwdb; } ;
struct TYPE_3__ {scalar_t__ link_state; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 long GET_UNDECORATED_AVERAGE_RSSI (struct rtl_priv*) ;
 scalar_t__ MAC80211_LINKED ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,long) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

long rtl8723e_dm_bt_get_rx_ss(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 long undecoratedsmoothed_pwdb = 0;

 if (rtlpriv->mac80211.link_state >= MAC80211_LINKED) {
  undecoratedsmoothed_pwdb =
   GET_UNDECORATED_AVERAGE_RSSI(rtlpriv);
 } else {
  undecoratedsmoothed_pwdb
   = rtlpriv->dm.entry_min_undec_sm_pwdb;
 }
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "rtl8723e_dm_bt_get_rx_ss() = %ld\n",
   undecoratedsmoothed_pwdb);

 return undecoratedsmoothed_pwdb;
}
