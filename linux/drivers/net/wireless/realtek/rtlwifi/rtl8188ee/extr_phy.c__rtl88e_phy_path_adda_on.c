
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee80211_hw {int dummy; } ;


 size_t IQK_ADDA_REG_NUM ;
 int MASKDWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,size_t,int ,size_t) ;

__attribute__((used)) static void _rtl88e_phy_path_adda_on(struct ieee80211_hw *hw,
         u32 *addareg, bool is_patha_on, bool is2t)
{
 u32 pathon;
 u32 i;

 pathon = is_patha_on ? 0x04db25a4 : 0x0b1b25a4;
 if (0 == is2t) {
  pathon = 0x0bdb25a0;
  rtl_set_bbreg(hw, addareg[0], MASKDWORD, 0x0b1b25a0);
 } else {
  rtl_set_bbreg(hw, addareg[0], MASKDWORD, pathon);
 }

 for (i = 1; i < IQK_ADDA_REG_NUM; i++)
  rtl_set_bbreg(hw, addareg[i], MASKDWORD, pathon);
}
