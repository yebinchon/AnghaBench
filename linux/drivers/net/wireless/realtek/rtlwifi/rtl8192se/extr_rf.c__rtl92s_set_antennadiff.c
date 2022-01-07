
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {int* antenna_txpwdiff; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;


 int BXBTXAGC ;
 int BXCTXAGC ;
 int BXDTXAGC ;
 int COMP_POWER ;
 int DBG_LOUD ;
 int RFPGA0_TXGAINSTAGE ;
 scalar_t__ RF_2T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;

__attribute__((used)) static void _rtl92s_set_antennadiff(struct ieee80211_hw *hw,
        u8 *p_final_pwridx)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 s8 ant_pwr_diff = 0;
 u32 u4reg_val = 0;

 if (rtlphy->rf_type == RF_2T2R) {
  ant_pwr_diff = p_final_pwridx[1] - p_final_pwridx[0];



  if (ant_pwr_diff > 7)
   ant_pwr_diff = 7;
  if (ant_pwr_diff < -8)
   ant_pwr_diff = -8;

  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Antenna Diff from RF-B to RF-A = %d (0x%x)\n",
    ant_pwr_diff, ant_pwr_diff & 0xf);

  ant_pwr_diff &= 0xf;
 }


 rtlefuse->antenna_txpwdiff[2] = 0;
 rtlefuse->antenna_txpwdiff[1] = 0;
 rtlefuse->antenna_txpwdiff[0] = (u8)(ant_pwr_diff);

 u4reg_val = rtlefuse->antenna_txpwdiff[2] << 8 |
    rtlefuse->antenna_txpwdiff[1] << 4 |
    rtlefuse->antenna_txpwdiff[0];

 rtl_set_bbreg(hw, RFPGA0_TXGAINSTAGE, (BXBTXAGC | BXCTXAGC | BXDTXAGC),
        u4reg_val);

 RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "Write BCD-Diff(0x%x) = 0x%x\n",
   RFPGA0_TXGAINSTAGE, u4reg_val);
}
