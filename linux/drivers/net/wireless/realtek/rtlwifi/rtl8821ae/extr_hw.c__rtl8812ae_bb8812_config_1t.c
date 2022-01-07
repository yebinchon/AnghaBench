
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int MASKLWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;

__attribute__((used)) static void _rtl8812ae_bb8812_config_1t(struct ieee80211_hw *hw)
{

 rtl_set_bbreg(hw, 0x808, 0xff, 0x11);

 rtl_set_bbreg(hw, 0x80c, MASKLWORD, 0x1111);

 rtl_set_bbreg(hw, 0xa04, 0x0c000000, 0x0);

 rtl_set_bbreg(hw, 0x8bc, 0xc0000060, 0x4);

 rtl_set_bbreg(hw, 0xe00, 0xf, 0x4);

 rtl_set_bbreg(hw, 0xe90, MASKDWORD, 0);

 rtl_set_bbreg(hw, 0xe60, MASKDWORD, 0);
 rtl_set_bbreg(hw, 0xe64, MASKDWORD, 0);
}
