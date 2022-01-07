
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int COMP_MAC80211 ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int rtl_op_add_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int rtl_op_remove_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static int rtl_op_change_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       enum nl80211_iftype new_type, bool p2p)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int ret;

 rtl_op_remove_interface(hw, vif);

 vif->type = new_type;
 vif->p2p = p2p;
 ret = rtl_op_add_interface(hw, vif);
 RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
   "p2p  %x\n", p2p);
 return ret;
}
