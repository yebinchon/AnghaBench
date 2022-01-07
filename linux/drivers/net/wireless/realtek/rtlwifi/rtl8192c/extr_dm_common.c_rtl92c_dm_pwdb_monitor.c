
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long entry_max_undec_sm_pwdb; long entry_min_undec_sm_pwdb; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_pwdb_monitor(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 long tmpentry_max_pwdb = 0, tmpentry_min_pwdb = 0xff;

 if (mac->link_state != MAC80211_LINKED)
  return;

 if (mac->opmode == NL80211_IFTYPE_ADHOC ||
     mac->opmode == NL80211_IFTYPE_AP) {

 }

 if (tmpentry_max_pwdb != 0)
  rtlpriv->dm.entry_max_undec_sm_pwdb = tmpentry_max_pwdb;
 else
  rtlpriv->dm.entry_max_undec_sm_pwdb = 0;

 if (tmpentry_min_pwdb != 0xff)
  rtlpriv->dm.entry_min_undec_sm_pwdb = tmpentry_min_pwdb;
 else
  rtlpriv->dm.entry_min_undec_sm_pwdb = 0;
}
