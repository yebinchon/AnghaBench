
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ IS_81XXC_VENDOR_UMC_B_CUT (int ) ;
 int MASKDWORD ;
 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 int RF_RX_G1 ;
 int rtl_get_rfreg (struct ieee80211_hw*,int ,int ,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int ,int) ;

__attribute__((used)) static void _rtl92c_phy_sw_rf_seting(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (IS_81XXC_VENDOR_UMC_B_CUT(rtlhal->version)) {
  if (channel == 6 &&
      rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20) {
   rtl_set_rfreg(hw, RF90_PATH_A, RF_RX_G1,
          MASKDWORD, 0x00255);
  } else {
   u32 backuprf0x1A =
     (u32)rtl_get_rfreg(hw, RF90_PATH_A, RF_RX_G1,
          RFREG_OFFSET_MASK);
   rtl_set_rfreg(hw, RF90_PATH_A, RF_RX_G1, MASKDWORD,
          backuprf0x1A);
  }
 }
}
