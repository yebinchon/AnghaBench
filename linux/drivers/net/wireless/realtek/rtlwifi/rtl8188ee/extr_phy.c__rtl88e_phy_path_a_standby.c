
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl88e_phy_path_a_standby(struct ieee80211_hw *hw)
{
 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x0);
 rtl_set_bbreg(hw, 0x840, MASKDWORD, 0x00010000);
 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x80800000);
}
