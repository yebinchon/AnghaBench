
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int FPHY ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 int PHY_TXPWR ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,char,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723be_phy_get_power_base(struct ieee80211_hw *hw,
      u8 *ppowerlevel_ofdm,
      u8 *ppowerlevel_bw20,
      u8 *ppowerlevel_bw40,
      u8 channel, u32 *ofdmbase,
      u32 *mcsbase)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 powerbase0, powerbase1;
 u8 i, powerlevel[2];

 for (i = 0; i < 2; i++) {
  powerbase0 = ppowerlevel_ofdm[i];

  powerbase0 = (powerbase0 << 24) | (powerbase0 << 16) |
      (powerbase0 << 8) | powerbase0;
  *(ofdmbase + i) = powerbase0;
  RTPRINT(rtlpriv, FPHY, PHY_TXPWR,
   " [OFDM power base index rf(%c) = 0x%x]\n",
    ((i == 0) ? 'A' : 'B'), *(ofdmbase + i));
 }

 for (i = 0; i < 2; i++) {
  if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20)
   powerlevel[i] = ppowerlevel_bw20[i];
  else
   powerlevel[i] = ppowerlevel_bw40[i];

  powerbase1 = powerlevel[i];
  powerbase1 = (powerbase1 << 24) | (powerbase1 << 16) |
        (powerbase1 << 8) | powerbase1;

  *(mcsbase + i) = powerbase1;

  RTPRINT(rtlpriv, FPHY, PHY_TXPWR,
   " [MCS power base index rf(%c) = 0x%x]\n",
    ((i == 0) ? 'A' : 'B'), *(mcsbase + i));
 }
}
