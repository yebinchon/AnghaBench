
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_efuse {int txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl8723e_ccxpower_index_check (struct ieee80211_hw*,int ,int *,int *) ;
 int _rtl8723e_get_txpower_index (struct ieee80211_hw*,int ,int *,int *) ;
 int rtl8723e_phy_rf6052_set_cck_txpower (struct ieee80211_hw*,int *) ;
 int rtl8723e_phy_rf6052_set_ofdm_txpower (struct ieee80211_hw*,int *,int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl8723e_phy_set_txpower_level(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 cckpowerlevel[2], ofdmpowerlevel[2];

 if (rtlefuse->txpwr_fromeprom == 0)
  return;
 _rtl8723e_get_txpower_index(hw, channel,
        &cckpowerlevel[0], &ofdmpowerlevel[0]);
 _rtl8723e_ccxpower_index_check(hw,
           channel, &cckpowerlevel[0],
           &ofdmpowerlevel[0]);
 rtl8723e_phy_rf6052_set_cck_txpower(hw, &cckpowerlevel[0]);
 rtl8723e_phy_rf6052_set_ofdm_txpower(hw, &ofdmpowerlevel[0], channel);
}
