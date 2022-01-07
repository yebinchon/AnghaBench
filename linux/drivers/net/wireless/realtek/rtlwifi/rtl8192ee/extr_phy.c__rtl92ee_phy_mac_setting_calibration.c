
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;

__attribute__((used)) static void _rtl92ee_phy_mac_setting_calibration(struct ieee80211_hw *hw,
       u32 *macreg, u32 *macbackup)
{
 rtl_set_bbreg(hw, 0x520, 0x00ff0000, 0xff);
}
