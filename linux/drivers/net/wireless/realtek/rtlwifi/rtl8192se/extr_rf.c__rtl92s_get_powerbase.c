
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {int eeprom_version; int legacy_httxpowerdiff; int** txpwr_legacyhtdiff; int** txpwr_ht20diff; int eeprom_regulatory; int ** pwrgroup_ht20; int ** pwrgroup_ht40; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92s_get_powerbase(struct ieee80211_hw *hw, u8 *p_pwrlevel,
      u8 chnl, u32 *ofdmbase, u32 *mcsbase,
      u8 *p_final_pwridx)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u32 pwrbase0, pwrbase1;
 u8 legacy_pwrdiff = 0, ht20_pwrdiff = 0;
 u8 i, pwrlevel[4];

 for (i = 0; i < 2; i++)
  pwrlevel[i] = p_pwrlevel[i];


 if (rtlefuse->eeprom_version < 2) {
  pwrbase0 = pwrlevel[0] + (rtlefuse->legacy_httxpowerdiff & 0xf);
 } else {
  legacy_pwrdiff = rtlefuse->txpwr_legacyhtdiff
      [RF90_PATH_A][chnl - 1];





  pwrbase0 = pwrlevel[0] + legacy_pwrdiff;
 }

 pwrbase0 = (pwrbase0 << 24) | (pwrbase0 << 16) | (pwrbase0 << 8) |
      pwrbase0;
 *ofdmbase = pwrbase0;


 if (rtlefuse->eeprom_version >= 2) {

  if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20) {
   for (i = 0; i < 2; i++) {


    ht20_pwrdiff = rtlefuse->txpwr_ht20diff
       [i][chnl - 1];

    if (ht20_pwrdiff < 8)
     pwrlevel[i] += ht20_pwrdiff;
    else
     pwrlevel[i] -= (16 - ht20_pwrdiff);
   }
  }
 }


 pwrbase1 = pwrlevel[0];
 pwrbase1 = (pwrbase1 << 24) | (pwrbase1 << 16) | (pwrbase1 << 8) |
    pwrbase1;
 *mcsbase = pwrbase1;



 p_final_pwridx[0] = pwrlevel[0];
 p_final_pwridx[1] = pwrlevel[1];

 switch (rtlefuse->eeprom_regulatory) {
 case 3:


  if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
   p_final_pwridx[0] += rtlefuse->pwrgroup_ht40
      [RF90_PATH_A][
      chnl - 1];
   p_final_pwridx[1] += rtlefuse->pwrgroup_ht40
      [RF90_PATH_B][
      chnl - 1];
  } else {
   p_final_pwridx[0] += rtlefuse->pwrgroup_ht20
      [RF90_PATH_A][
      chnl - 1];
   p_final_pwridx[1] += rtlefuse->pwrgroup_ht20
      [RF90_PATH_B][
      chnl - 1];
  }
  break;
 default:
  break;
 }

 if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "40MHz finalpwr_idx (A / B) = 0x%x / 0x%x\n",
    p_final_pwridx[0], p_final_pwridx[1]);
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "20MHz finalpwr_idx (A / B) = 0x%x / 0x%x\n",
    p_final_pwridx[0], p_final_pwridx[1]);
 }
}
