
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int ,int) ;

__attribute__((used)) static void _rtl92ee_phy_path_a_standby(struct ieee80211_hw *hw)
{
 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x0);
 rtl_set_rfreg(hw, RF90_PATH_A, 0, RFREG_OFFSET_MASK, 0x10000);
 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x80800000);
}
