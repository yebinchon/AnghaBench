
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_phy {int current_channel; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {scalar_t__ legacy_ht_txpowerdiff; scalar_t__** txpwrlevel_ht40_2s; scalar_t__** txpwrlevel_ht40_1s; scalar_t__** txpwrlevel_cck; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_TXAGC ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,long,scalar_t__,scalar_t__) ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_N_24G ;
 scalar_t__ _rtl8723e_phy_dbm_to_txpwr_idx (struct ieee80211_hw*,int ,long) ;
 int rtl8723e_phy_set_txpower_level (struct ieee80211_hw*,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8723e_phy_update_txpower_dbm(struct ieee80211_hw *hw, long power_indbm)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 idx;
 u8 rf_path;
 u8 ccktxpwridx = _rtl8723e_phy_dbm_to_txpwr_idx(hw,
            WIRELESS_MODE_B,
            power_indbm);
 u8 ofdmtxpwridx = _rtl8723e_phy_dbm_to_txpwr_idx(hw,
             WIRELESS_MODE_N_24G,
             power_indbm);
 if (ofdmtxpwridx - rtlefuse->legacy_ht_txpowerdiff > 0)
  ofdmtxpwridx -= rtlefuse->legacy_ht_txpowerdiff;
 else
  ofdmtxpwridx = 0;
 RT_TRACE(rtlpriv, COMP_TXAGC, DBG_TRACE,
   "%lx dBm, ccktxpwridx = %d, ofdmtxpwridx = %d\n",
    power_indbm, ccktxpwridx, ofdmtxpwridx);
 for (idx = 0; idx < 14; idx++) {
  for (rf_path = 0; rf_path < 2; rf_path++) {
   rtlefuse->txpwrlevel_cck[rf_path][idx] = ccktxpwridx;
   rtlefuse->txpwrlevel_ht40_1s[rf_path][idx] =
       ofdmtxpwridx;
   rtlefuse->txpwrlevel_ht40_2s[rf_path][idx] =
       ofdmtxpwridx;
  }
 }
 rtl8723e_phy_set_txpower_level(hw, rtlphy->current_channel);
 return 1;
}
