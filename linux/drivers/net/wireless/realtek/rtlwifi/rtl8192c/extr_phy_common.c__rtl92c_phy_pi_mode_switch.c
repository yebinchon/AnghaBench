
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl92c_phy_pi_mode_switch(struct ieee80211_hw *hw, bool pi_mode)
{
 u32 mode;

 mode = pi_mode ? 0x01000100 : 0x01000000;
 rtl_set_bbreg(hw, 0x820, MASKDWORD, mode);
 rtl_set_bbreg(hw, 0x828, MASKDWORD, mode);
}
