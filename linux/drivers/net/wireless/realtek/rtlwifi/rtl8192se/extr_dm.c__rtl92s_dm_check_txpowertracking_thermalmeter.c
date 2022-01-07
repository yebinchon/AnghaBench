
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ txpowercount; int tm_trigger; int txpower_tracking; } ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {TYPE_1__ dm; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 scalar_t__ RF_2T2R ;
 int RF_T_METER ;
 int _rtl92s_dm_txpowertracking_callback_thermalmeter (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int ,int) ;

__attribute__((used)) static void _rtl92s_dm_check_txpowertracking_thermalmeter(
     struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 tx_power_checkcnt = 5;


 if (rtlphy->rf_type == RF_2T2R)
  return;

 if (!rtlpriv->dm.txpower_tracking)
  return;

 if (rtlpriv->dm.txpowercount <= tx_power_checkcnt) {
  rtlpriv->dm.txpowercount++;
  return;
 }

 if (!rtlpriv->dm.tm_trigger) {
  rtl_set_rfreg(hw, RF90_PATH_A, RF_T_METER,
         RFREG_OFFSET_MASK, 0x60);
  rtlpriv->dm.tm_trigger = 1;
 } else {
  _rtl92s_dm_txpowertracking_callback_thermalmeter(hw);
  rtlpriv->dm.tm_trigger = 0;
 }
}
