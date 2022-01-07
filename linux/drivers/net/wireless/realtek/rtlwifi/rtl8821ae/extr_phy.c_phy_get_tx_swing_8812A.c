
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_efuse {scalar_t__ autoload_failflag; } ;
struct rtl_dm {int swing_diff_2g; int swing_diff_5g; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;


 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;
 int COMP_SCAN ;
 int DBG_LOUD ;
 scalar_t__ HARDWARE_TYPE_RTL8821AE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int efuse_shadow_read (struct ieee80211_hw*,int,int,int*) ;
 struct rtl_dm* rtl_dm (struct rtl_priv*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u32 phy_get_tx_swing_8812A(struct ieee80211_hw *hw, u8 band,
      u8 rf_path)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtlpriv);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 s8 reg_swing_2g = -1;
 s8 reg_swing_5g = -1;
 s8 swing_2g = -1 * reg_swing_2g;
 s8 swing_5g = -1 * reg_swing_5g;
 u32 out = 0x200;
 const s8 auto_temp = -1;

 RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
   "===> PHY_GetTXBBSwing_8812A, bbSwing_2G: %d, bbSwing_5G: %d,autoload_failflag=%d.\n",
   (int)swing_2g, (int)swing_5g,
   (int)rtlefuse->autoload_failflag);

 if (rtlefuse->autoload_failflag) {
  if (band == BAND_ON_2_4G) {
   rtldm->swing_diff_2g = swing_2g;
   if (swing_2g == 0) {
    out = 0x200;
   } else if (swing_2g == -3) {
    out = 0x16A;
   } else if (swing_2g == -6) {
    out = 0x101;
   } else if (swing_2g == -9) {
    out = 0x0B6;
   } else {
    rtldm->swing_diff_2g = 0;
    out = 0x200;
   }
  } else if (band == BAND_ON_5G) {
   rtldm->swing_diff_5g = swing_5g;
   if (swing_5g == 0) {
    out = 0x200;
   } else if (swing_5g == -3) {
    out = 0x16A;
   } else if (swing_5g == -6) {
    out = 0x101;
   } else if (swing_5g == -9) {
    out = 0x0B6;
   } else {
    if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
     rtldm->swing_diff_5g = -3;
     out = 0x16A;
    } else {
     rtldm->swing_diff_5g = 0;
     out = 0x200;
    }
   }
  } else {
   rtldm->swing_diff_2g = -3;
   rtldm->swing_diff_5g = -3;
   out = 0x16A;
  }
 } else {
  u32 swing = 0, swing_a = 0, swing_b = 0;

  if (band == BAND_ON_2_4G) {
   if (reg_swing_2g == auto_temp) {
    efuse_shadow_read(hw, 1, 0xC6, (u32 *)&swing);
    swing = (swing == 0xFF) ? 0x00 : swing;
   } else if (swing_2g == 0) {
    swing = 0x00;
   } else if (swing_2g == -3) {
    swing = 0x05;
   } else if (swing_2g == -6) {
    swing = 0x0A;
   } else if (swing_2g == -9) {
    swing = 0xFF;
   } else {
    swing = 0x00;
   }
  } else {
   if (reg_swing_5g == auto_temp) {
    efuse_shadow_read(hw, 1, 0xC7, (u32 *)&swing);
    swing = (swing == 0xFF) ? 0x00 : swing;
   } else if (swing_5g == 0) {
    swing = 0x00;
   } else if (swing_5g == -3) {
    swing = 0x05;
   } else if (swing_5g == -6) {
    swing = 0x0A;
   } else if (swing_5g == -9) {
    swing = 0xFF;
   } else {
    swing = 0x00;
   }
  }

  swing_a = (swing & 0x3) >> 0;
  swing_b = (swing & 0xC) >> 2;
  RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
    "===> PHY_GetTXBBSwing_8812A, swingA: 0x%X, swingB: 0x%X\n",
    swing_a, swing_b);


  if (swing_a == 0x0) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = 0;
   else
    rtldm->swing_diff_5g = 0;
   out = 0x200;
  } else if (swing_a == 0x1) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -3;
   else
    rtldm->swing_diff_5g = -3;
   out = 0x16A;
  } else if (swing_a == 0x2) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -6;
   else
    rtldm->swing_diff_5g = -6;
   out = 0x101;
  } else if (swing_a == 0x3) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -9;
   else
    rtldm->swing_diff_5g = -9;
   out = 0x0B6;
  }

  if (swing_b == 0x0) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = 0;
   else
    rtldm->swing_diff_5g = 0;
   out = 0x200;
  } else if (swing_b == 0x1) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -3;
   else
    rtldm->swing_diff_5g = -3;
   out = 0x16A;
  } else if (swing_b == 0x2) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -6;
   else
    rtldm->swing_diff_5g = -6;
   out = 0x101;
  } else if (swing_b == 0x3) {
   if (band == BAND_ON_2_4G)
    rtldm->swing_diff_2g = -9;
   else
    rtldm->swing_diff_5g = -9;
   out = 0x0B6;
  }
 }

 RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
   "<=== PHY_GetTXBBSwing_8812A, out = 0x%X\n", out);
 return out;
}
