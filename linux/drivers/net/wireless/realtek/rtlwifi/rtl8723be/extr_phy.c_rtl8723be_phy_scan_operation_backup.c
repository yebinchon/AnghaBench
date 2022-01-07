
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum io_type { ____Placeholder_io_type } io_type ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int HW_VAR_IO_CMD ;
 int IO_CMD_PAUSE_BAND0_DM_BY_SCAN ;
 int IO_CMD_RESUME_DM_BY_SCAN ;


 int is_hal_stop (struct rtl_hal*) ;
 int pr_err (char*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;
 int stub2 (struct ieee80211_hw*,int ,int*) ;

void rtl8723be_phy_scan_operation_backup(struct ieee80211_hw *hw, u8 operation)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 enum io_type iotype;

 if (!is_hal_stop(rtlhal)) {
  switch (operation) {
  case 129:
   iotype = IO_CMD_PAUSE_BAND0_DM_BY_SCAN;
   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_IO_CMD,
            (u8 *)&iotype);

   break;
  case 128:
   iotype = IO_CMD_RESUME_DM_BY_SCAN;
   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_IO_CMD,
            (u8 *)&iotype);
   break;
  default:
   pr_err("Unknown Scan Backup operation.\n");
   break;
  }
 }
}
