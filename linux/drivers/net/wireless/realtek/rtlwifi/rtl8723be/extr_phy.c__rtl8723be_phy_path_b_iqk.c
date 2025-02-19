
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int IQK_DELAY_TIME ;
 int MASKDWORD ;
 int RF90_PATH_A ;
 int RFPGA0_IQK ;
 int RFREG_OFFSET_MASK ;
 int RIQK_AGC_PTS ;
 int RIQK_AGC_RSP ;
 int RRX_IQK ;
 int RRX_IQK_PI_A ;
 int RRX_IQK_PI_B ;
 int RRX_IQK_TONE_A ;
 int RRX_IQK_TONE_B ;
 int RRX_POWER_AFTER_IQK_A_2 ;
 int RTX_IQK ;
 int RTX_IQK_PI_A ;
 int RTX_IQK_PI_B ;
 int RTX_IQK_TONE_A ;
 int RTX_IQK_TONE_B ;
 int RTX_POWER_AFTER_IQK_A ;
 int RTX_POWER_BEFORE_IQK_A ;
 int mdelay (int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int ,int) ;

__attribute__((used)) static u8 _rtl8723be_phy_path_b_iqk(struct ieee80211_hw *hw)
{
 u32 reg_eac, reg_e94, reg_e9c, tmp;
 u8 result = 0x00;


 rtl_set_bbreg(hw, RFPGA0_IQK, MASKDWORD, 0x00000000);

 rtl_set_bbreg(hw, 0x948, MASKDWORD, 0x00000280);


 rtl_set_rfreg(hw, RF90_PATH_A, 0xed, RFREG_OFFSET_MASK, 0x00020);
 rtl_set_rfreg(hw, RF90_PATH_A, 0x43, RFREG_OFFSET_MASK, 0x40fc1);



 rtl_set_bbreg(hw, RTX_IQK, MASKDWORD, 0x01007c00);
 rtl_set_bbreg(hw, RRX_IQK, MASKDWORD, 0x01004800);

 rtl_set_bbreg(hw, RTX_IQK_TONE_A, MASKDWORD, 0x18008c1c);
 rtl_set_bbreg(hw, RRX_IQK_TONE_A, MASKDWORD, 0x38008c1c);
 rtl_set_bbreg(hw, RTX_IQK_TONE_B, MASKDWORD, 0x38008c1c);
 rtl_set_bbreg(hw, RRX_IQK_TONE_B, MASKDWORD, 0x38008c1c);

 rtl_set_bbreg(hw, RTX_IQK_PI_A, MASKDWORD, 0x821403ea);
 rtl_set_bbreg(hw, RRX_IQK_PI_A, MASKDWORD, 0x28110000);
 rtl_set_bbreg(hw, RTX_IQK_PI_B, MASKDWORD, 0x82110000);
 rtl_set_bbreg(hw, RRX_IQK_PI_B, MASKDWORD, 0x28110000);


 rtl_set_bbreg(hw, RIQK_AGC_RSP, MASKDWORD, 0x00462911);


 rtl_set_bbreg(hw, RFPGA0_IQK, MASKDWORD, 0x80800000);


 rtl_set_bbreg(hw, RIQK_AGC_PTS, MASKDWORD, 0xf9000000);
 rtl_set_bbreg(hw, RIQK_AGC_PTS, MASKDWORD, 0xf8000000);

 mdelay(IQK_DELAY_TIME);


 rtl_set_bbreg(hw, RFPGA0_IQK, MASKDWORD, 0x00000000);


 reg_eac = rtl_get_bbreg(hw, RRX_POWER_AFTER_IQK_A_2, MASKDWORD);
 reg_e94 = rtl_get_bbreg(hw, RTX_POWER_BEFORE_IQK_A, MASKDWORD);
 reg_e9c = rtl_get_bbreg(hw, RTX_POWER_AFTER_IQK_A, MASKDWORD);

 if (!(reg_eac & BIT(28)) &&
     (((reg_e94 & 0x03FF0000) >> 16) != 0x142) &&
     (((reg_e9c & 0x03FF0000) >> 16) != 0x42))
  result |= 0x01;
 else
  return result;


 tmp = (reg_e9c & 0x03FF0000) >> 16;
 if ((tmp & 0x200) > 0)
  tmp = 0x400 - tmp;

 if (!(reg_eac & BIT(28)) &&
     (((reg_e94 & 0x03FF0000) >> 16) < 0x110) &&
     (((reg_e94 & 0x03FF0000) >> 16) > 0xf0) &&
     (tmp < 0xf))
  result |= 0x01;
 else
  return result;

 return result;
}
