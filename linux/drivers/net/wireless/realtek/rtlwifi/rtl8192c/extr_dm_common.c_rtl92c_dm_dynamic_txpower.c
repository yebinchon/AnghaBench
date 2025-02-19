
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dm_flag; scalar_t__ dynamic_txhighpower_lvl; long entry_min_undec_sm_pwdb; scalar_t__ last_dtp_lvl; long undec_sm_pwdb; int dynamic_txpower_enable; } ;
struct rtl_phy {long current_channel; } ;
struct rtl_priv {TYPE_1__ dm; struct rtl_phy phy; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int HAL_DM_HIPWR_DISABLE ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ TXHIGHPWRLEVEL_LEVEL1 ;
 scalar_t__ TXHIGHPWRLEVEL_LEVEL2 ;
 scalar_t__ TXHIGHPWRLEVEL_NORMAL ;
 long TX_POWER_NEAR_FIELD_THRESH_LVL1 ;
 long TX_POWER_NEAR_FIELD_THRESH_LVL2 ;
 int dm_restorepowerindex (struct ieee80211_hw*) ;
 int dm_writepowerindex (struct ieee80211_hw*,int) ;
 int rtl92c_phy_set_txpower_level (struct ieee80211_hw*,long) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92c_dm_dynamic_txpower(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 long undec_sm_pwdb;

 if (!rtlpriv->dm.dynamic_txpower_enable)
  return;

 if (rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) {
  rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_NORMAL;
  return;
 }

 if ((mac->link_state < MAC80211_LINKED) &&
     (rtlpriv->dm.entry_min_undec_sm_pwdb == 0)) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
    "Not connected to any\n");

  rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_NORMAL;

  rtlpriv->dm.last_dtp_lvl = TXHIGHPWRLEVEL_NORMAL;
  return;
 }

 if (mac->link_state >= MAC80211_LINKED) {
  if (mac->opmode == NL80211_IFTYPE_ADHOC) {
   undec_sm_pwdb = rtlpriv->dm.entry_min_undec_sm_pwdb;
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
     "AP Client PWDB = 0x%lx\n",
     undec_sm_pwdb);
  } else {
   undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
     "STA Default Port PWDB = 0x%lx\n",
     undec_sm_pwdb);
  }
 } else {
  undec_sm_pwdb = rtlpriv->dm.entry_min_undec_sm_pwdb;

  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "AP Ext Port PWDB = 0x%lx\n",
    undec_sm_pwdb);
 }

 if (undec_sm_pwdb >= TX_POWER_NEAR_FIELD_THRESH_LVL2) {
  rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_LEVEL2;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\n");
 } else if ((undec_sm_pwdb < (TX_POWER_NEAR_FIELD_THRESH_LVL2 - 3)) &&
     (undec_sm_pwdb >= TX_POWER_NEAR_FIELD_THRESH_LVL1)) {

  rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_LEVEL1;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\n");
 } else if (undec_sm_pwdb < (TX_POWER_NEAR_FIELD_THRESH_LVL1 - 5)) {
  rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_NORMAL;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "TXHIGHPWRLEVEL_NORMAL\n");
 }

 if ((rtlpriv->dm.dynamic_txhighpower_lvl != rtlpriv->dm.last_dtp_lvl)) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "PHY_SetTxPowerLevel8192S() Channel = %d\n",
    rtlphy->current_channel);
  rtl92c_phy_set_txpower_level(hw, rtlphy->current_channel);
  if (rtlpriv->dm.dynamic_txhighpower_lvl ==
      TXHIGHPWRLEVEL_NORMAL)
   dm_restorepowerindex(hw);
  else if (rtlpriv->dm.dynamic_txhighpower_lvl ==
    TXHIGHPWRLEVEL_LEVEL1)
   dm_writepowerindex(hw, 0x14);
  else if (rtlpriv->dm.dynamic_txhighpower_lvl ==
    TXHIGHPWRLEVEL_LEVEL2)
   dm_writepowerindex(hw, 0x10);
 }
 rtlpriv->dm.last_dtp_lvl = rtlpriv->dm.dynamic_txhighpower_lvl;
}
