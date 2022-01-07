
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FPHY ;
 int MASKDWORD ;
 int PHY_TXPWR ;
 int RF6052_MAX_TX_PWR ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,int ,int) ;
 int RTXAGC_A_MCS03_MCS00 ;
 int RTXAGC_A_MCS07_MCS04 ;
 int RTXAGC_A_MCS11_MCS08 ;
 int RTXAGC_A_MCS15_MCS12 ;
 int RTXAGC_A_OFDM18_OFDM6 ;
 int RTXAGC_A_OFDM54_OFDM24 ;
 int RTXAGC_B_MCS03_MCS00 ;
 int RTXAGC_B_MCS07_MCS04 ;
 int RTXAGC_B_MCS11_MCS08 ;
 int RTXAGC_B_MCS15_MCS12 ;
 int RTXAGC_B_OFDM18_OFDM6 ;
 int RTXAGC_B_OFDM54_OFDM24 ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void _rtl8821ae_write_ofdm_power_reg(struct ieee80211_hw *hw,
         u8 index, u32 *pvalue)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 regoffset_a[6] = {
  RTXAGC_A_OFDM18_OFDM6, RTXAGC_A_OFDM54_OFDM24,
  RTXAGC_A_MCS03_MCS00, RTXAGC_A_MCS07_MCS04,
  RTXAGC_A_MCS11_MCS08, RTXAGC_A_MCS15_MCS12
 };
 u16 regoffset_b[6] = {
  RTXAGC_B_OFDM18_OFDM6, RTXAGC_B_OFDM54_OFDM24,
  RTXAGC_B_MCS03_MCS00, RTXAGC_B_MCS07_MCS04,
  RTXAGC_B_MCS11_MCS08, RTXAGC_B_MCS15_MCS12
 };
 u8 i, rf, pwr_val[4];
 u32 writeval;
 u16 regoffset;

 for (rf = 0; rf < 2; rf++) {
  writeval = pvalue[rf];
  for (i = 0; i < 4; i++) {
   pwr_val[i] = (u8)((writeval & (0x7f <<
       (i * 8))) >> (i * 8));

   if (pwr_val[i] > RF6052_MAX_TX_PWR)
    pwr_val[i] = RF6052_MAX_TX_PWR;
  }
  writeval = (pwr_val[3] << 24) | (pwr_val[2] << 16) |
      (pwr_val[1] << 8) | pwr_val[0];

  if (rf == 0)
   regoffset = regoffset_a[index];
  else
   regoffset = regoffset_b[index];
  rtl_set_bbreg(hw, regoffset, MASKDWORD, writeval);

  RTPRINT(rtlpriv, FPHY, PHY_TXPWR,
   "Set 0x%x = %08x\n", regoffset, writeval);
 }
}
