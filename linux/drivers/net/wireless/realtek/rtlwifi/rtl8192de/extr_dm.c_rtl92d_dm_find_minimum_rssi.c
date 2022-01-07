
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ UNDEC_SM_PWDB; scalar_t__ undec_sm_pwdb; } ;
struct dig_t {scalar_t__ min_undec_pwdb_for_dm; } ;
struct rtl_priv {TYPE_1__ dm; struct dig_t dm_digtable; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BB_POWERSAVING ;
 int COMP_DIG ;
 int DBG_LOUD ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92d_dm_find_minimum_rssi(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *de_digtable = &rtlpriv->dm_digtable;
 struct rtl_mac *mac = rtl_mac(rtlpriv);


 if ((mac->link_state < MAC80211_LINKED) &&
     (rtlpriv->dm.UNDEC_SM_PWDB == 0)) {
  de_digtable->min_undec_pwdb_for_dm = 0;
  RT_TRACE(rtlpriv, COMP_BB_POWERSAVING, DBG_LOUD,
    "Not connected to any\n");
 }
 if (mac->link_state >= MAC80211_LINKED) {
  if (mac->opmode == NL80211_IFTYPE_AP ||
      mac->opmode == NL80211_IFTYPE_ADHOC) {
   de_digtable->min_undec_pwdb_for_dm =
       rtlpriv->dm.UNDEC_SM_PWDB;
   RT_TRACE(rtlpriv, COMP_BB_POWERSAVING, DBG_LOUD,
     "AP Client PWDB = 0x%lx\n",
     rtlpriv->dm.UNDEC_SM_PWDB);
  } else {
   de_digtable->min_undec_pwdb_for_dm =
       rtlpriv->dm.undec_sm_pwdb;
   RT_TRACE(rtlpriv, COMP_BB_POWERSAVING, DBG_LOUD,
     "STA Default Port PWDB = 0x%x\n",
     de_digtable->min_undec_pwdb_for_dm);
  }
 } else {
  de_digtable->min_undec_pwdb_for_dm = rtlpriv->dm.UNDEC_SM_PWDB;
  RT_TRACE(rtlpriv, COMP_BB_POWERSAVING, DBG_LOUD,
    "AP Ext Port or disconnect PWDB = 0x%x\n",
    de_digtable->min_undec_pwdb_for_dm);
 }

 RT_TRACE(rtlpriv, COMP_DIG, DBG_LOUD, "MinUndecoratedPWDBForDM =%d\n",
   de_digtable->min_undec_pwdb_for_dm);
}
