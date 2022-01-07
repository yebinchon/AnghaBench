
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_dm {scalar_t__ tx_rate; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 scalar_t__ HARDWARE_TYPE_RTL8821AE ;
 scalar_t__ MAX_PATH_NUM_8812A ;
 int MIX_MODE ;
 scalar_t__ RF90_PATH_A ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__) ;
 int rtl8812ae_dm_txpwr_track_set_pwr (struct ieee80211_hw*,int ,scalar_t__,int ) ;
 int rtl8821ae_dm_txpwr_track_set_pwr (struct ieee80211_hw*,int ,scalar_t__,int ) ;
 struct rtl_dm* rtl_dm (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_dm_update_init_rate(struct ieee80211_hw *hw, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 p = 0;

 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "Get C2H Command! Rate=0x%x\n", rate);

 rtldm->tx_rate = rate;

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
  rtl8821ae_dm_txpwr_track_set_pwr(hw, MIX_MODE, RF90_PATH_A, 0);
 } else {
  for (p = RF90_PATH_A; p < MAX_PATH_NUM_8812A; p++)
   rtl8812ae_dm_txpwr_track_set_pwr(hw, MIX_MODE, p, 0);
 }
}
