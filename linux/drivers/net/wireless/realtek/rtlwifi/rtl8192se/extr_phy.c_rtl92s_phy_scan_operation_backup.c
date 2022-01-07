
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FW_CMD_PAUSE_DM_BY_SCAN ;
 int FW_CMD_RESUME_DM_BY_SCAN ;


 int is_hal_stop (struct rtl_hal*) ;
 int pr_err (char*) ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl92s_phy_scan_operation_backup(struct ieee80211_hw *hw,
          u8 operation)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (!is_hal_stop(rtlhal)) {
  switch (operation) {
  case 129:
   rtl92s_phy_set_fw_cmd(hw, FW_CMD_PAUSE_DM_BY_SCAN);
   break;
  case 128:
   rtl92s_phy_set_fw_cmd(hw, FW_CMD_RESUME_DM_BY_SCAN);
   break;
  default:
   pr_err("Unknown operation\n");
   break;
  }
 }
}
