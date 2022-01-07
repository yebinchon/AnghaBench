
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ previous_state; scalar_t__ cstate; scalar_t__ previous_state_h; scalar_t__ cstate_h; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8723e_dm_bt_is_coexist_state_changed(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if ((rtlpriv->btcoexist.previous_state == rtlpriv->btcoexist.cstate) &&
     (rtlpriv->btcoexist.previous_state_h ==
      rtlpriv->btcoexist.cstate_h))
  return 0;
 return 1;
}
