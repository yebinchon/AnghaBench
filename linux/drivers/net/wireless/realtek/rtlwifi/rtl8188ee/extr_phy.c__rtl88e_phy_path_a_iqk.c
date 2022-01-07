
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
 int mdelay (int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int,int ) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static u8 _rtl88e_phy_path_a_iqk(struct ieee80211_hw *hw, bool config_pathb)
{
 u32 reg_eac, reg_e94, reg_e9c, reg_ea4;
 u8 result = 0x00;

 rtl_set_bbreg(hw, 0xe30, MASKDWORD, 0x10008c1c);
 rtl_set_bbreg(hw, 0xe34, MASKDWORD, 0x30008c1c);
 rtl_set_bbreg(hw, 0xe38, MASKDWORD, 0x8214032a);
 rtl_set_bbreg(hw, 0xe3c, MASKDWORD, 0x28160000);

 rtl_set_bbreg(hw, 0xe4c, MASKDWORD, 0x00462911);
 rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf9000000);
 rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf8000000);

 mdelay(IQK_DELAY_TIME);

 reg_eac = rtl_get_bbreg(hw, 0xeac, MASKDWORD);
 reg_e94 = rtl_get_bbreg(hw, 0xe94, MASKDWORD);
 reg_e9c = rtl_get_bbreg(hw, 0xe9c, MASKDWORD);
 reg_ea4 = rtl_get_bbreg(hw, 0xea4, MASKDWORD);

 if (!(reg_eac & BIT(28)) &&
     (((reg_e94 & 0x03FF0000) >> 16) != 0x142) &&
     (((reg_e9c & 0x03FF0000) >> 16) != 0x42))
  result |= 0x01;
 return result;
}
