
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dm_initialgain_enable; int dm_flag; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int DYNAMIC_FUNC_DIG ;
 int rtl92c_dm_ctrl_initgain_by_twoport (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_dig(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->dm.dm_initialgain_enable == 0)
  return;
 if (!(rtlpriv->dm.dm_flag & DYNAMIC_FUNC_DIG))
  return;

 rtl92c_dm_ctrl_initgain_by_twoport(hw);
}
