
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int cur_ofdm24g_txpwridx; int cur_cck_txpwridx; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WIRELESS_MODE_N_24G ;
 long _rtl88e_phy_txpwr_idx_to_dbm (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl88e_phy_get_txpower_level(struct ieee80211_hw *hw, long *powerlevel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 txpwr_level;
 long txpwr_dbm;

 txpwr_level = rtlphy->cur_cck_txpwridx;
 txpwr_dbm = _rtl88e_phy_txpwr_idx_to_dbm(hw,
       WIRELESS_MODE_B, txpwr_level);
 txpwr_level = rtlphy->cur_ofdm24g_txpwridx;
 if (_rtl88e_phy_txpwr_idx_to_dbm(hw,
      WIRELESS_MODE_G,
      txpwr_level) > txpwr_dbm)
  txpwr_dbm =
      _rtl88e_phy_txpwr_idx_to_dbm(hw, WIRELESS_MODE_G,
       txpwr_level);
 txpwr_level = rtlphy->cur_ofdm24g_txpwridx;
 if (_rtl88e_phy_txpwr_idx_to_dbm(hw,
      WIRELESS_MODE_N_24G,
      txpwr_level) > txpwr_dbm)
  txpwr_dbm =
      _rtl88e_phy_txpwr_idx_to_dbm(hw, WIRELESS_MODE_N_24G,
       txpwr_level);
 *powerlevel = txpwr_dbm;
}
