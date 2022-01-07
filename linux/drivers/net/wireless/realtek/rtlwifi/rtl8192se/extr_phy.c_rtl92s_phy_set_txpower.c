
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ,int ,int ,int ) ;
 int _rtl92s_phy_ccxpower_indexcheck (struct ieee80211_hw*,int ,int *,int *) ;
 int _rtl92s_phy_get_txpower_index (struct ieee80211_hw*,int ,int *,int *) ;
 int rtl92s_phy_rf6052_set_ccktxpower (struct ieee80211_hw*,int ) ;
 int rtl92s_phy_rf6052_set_ofdmtxpower (struct ieee80211_hw*,int *,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92s_phy_set_txpower(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 u8 cckpowerlevel[2], ofdmpowerlevel[2];

 if (!rtlefuse->txpwr_fromeprom)
  return;







 _rtl92s_phy_get_txpower_index(hw, channel, &cckpowerlevel[0],
   &ofdmpowerlevel[0]);

 RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
   "Channel-%d, cckPowerLevel (A / B) = 0x%x / 0x%x, ofdmPowerLevel (A / B) = 0x%x / 0x%x\n",
   channel, cckpowerlevel[0], cckpowerlevel[1],
   ofdmpowerlevel[0], ofdmpowerlevel[1]);

 _rtl92s_phy_ccxpower_indexcheck(hw, channel, &cckpowerlevel[0],
   &ofdmpowerlevel[0]);

 rtl92s_phy_rf6052_set_ccktxpower(hw, cckpowerlevel[0]);
 rtl92s_phy_rf6052_set_ofdmtxpower(hw, &ofdmpowerlevel[0], channel);

}
