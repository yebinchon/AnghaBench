
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee80211_hw {int dummy; } ;


 size_t IQK_ADDA_REG_NUM ;
 int MASKDWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,size_t,int ,int) ;

__attribute__((used)) static void _rtl92ee_phy_path_adda_on(struct ieee80211_hw *hw, u32 *addareg,
          bool is_patha_on, bool is2t)
{
 u32 i;

 for (i = 0; i < IQK_ADDA_REG_NUM; i++)
  rtl_set_bbreg(hw, addareg[i], MASKDWORD, 0x0fc01616);
}
