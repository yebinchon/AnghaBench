
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {int* antenna_txpwdiff; } ;
struct ieee80211_hw {int dummy; } ;


 int RF6052_MAX_TX_PWR ;
 scalar_t__ RF_2T2R ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;

__attribute__((used)) static void _rtl92s_write_ofdm_powerreg(struct ieee80211_hw *hw,
     u8 index, u32 val)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u16 regoffset[6] = {0xe00, 0xe04, 0xe10, 0xe14, 0xe18, 0xe1c};
 u8 i, rfa_pwr[4];
 u8 rfa_lower_bound = 0, rfa_upper_bound = 0, rf_pwr_diff = 0;
 u32 writeval = val;




 if (rtlphy->rf_type == RF_2T2R) {
  rf_pwr_diff = rtlefuse->antenna_txpwdiff[0];


  if (rf_pwr_diff >= 8) {

   rfa_lower_bound = 0x10 - rf_pwr_diff;

  } else {
   rfa_upper_bound = RF6052_MAX_TX_PWR - rf_pwr_diff;
  }
 }

 for (i = 0; i < 4; i++) {
  rfa_pwr[i] = (u8)((writeval & (0x7f << (i * 8))) >> (i * 8));
  if (rfa_pwr[i] > RF6052_MAX_TX_PWR)
   rfa_pwr[i] = RF6052_MAX_TX_PWR;




  if (rtlphy->rf_type == RF_2T2R) {

   if (rf_pwr_diff >= 8) {

    if (rfa_pwr[i] < rfa_lower_bound)
     rfa_pwr[i] = rfa_lower_bound;

   } else if (rf_pwr_diff >= 1) {

    if (rfa_pwr[i] > rfa_upper_bound)
     rfa_pwr[i] = rfa_upper_bound;
   }
  }

 }

 writeval = (rfa_pwr[3] << 24) | (rfa_pwr[2] << 16) | (rfa_pwr[1] << 8) |
    rfa_pwr[0];

 rtl_set_bbreg(hw, regoffset[index], 0x7f7f7f7f, writeval);
}
