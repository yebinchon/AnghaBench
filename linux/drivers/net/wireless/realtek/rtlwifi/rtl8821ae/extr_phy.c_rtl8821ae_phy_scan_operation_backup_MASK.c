#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum io_type { ____Placeholder_io_type } io_type ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_IO_CMD ; 
 int IO_CMD_PAUSE_BAND0_DM_BY_SCAN ; 
 int IO_CMD_PAUSE_BAND1_DM_BY_SCAN ; 
 int IO_CMD_RESUME_DM_BY_SCAN ; 
#define  SCAN_OPT_BACKUP_BAND0 130 
#define  SCAN_OPT_BACKUP_BAND1 129 
#define  SCAN_OPT_RESTORE 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 

void FUNC7(struct ieee80211_hw *hw, u8 operation)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	enum io_type iotype = IO_CMD_PAUSE_BAND0_DM_BY_SCAN;

	if (!FUNC0(rtlhal)) {
		switch (operation) {
		case SCAN_OPT_BACKUP_BAND0:
			iotype = IO_CMD_PAUSE_BAND0_DM_BY_SCAN;
			rtlpriv->cfg->ops->set_hw_reg(hw,
						      HW_VAR_IO_CMD,
						      (u8 *)&iotype);

			break;
		case SCAN_OPT_BACKUP_BAND1:
			iotype = IO_CMD_PAUSE_BAND1_DM_BY_SCAN;
			rtlpriv->cfg->ops->set_hw_reg(hw,
						      HW_VAR_IO_CMD,
						      (u8 *)&iotype);

			break;
		case SCAN_OPT_RESTORE:
			iotype = IO_CMD_RESUME_DM_BY_SCAN;
			rtlpriv->cfg->ops->set_hw_reg(hw,
						      HW_VAR_IO_CMD,
						      (u8 *)&iotype);
			break;
		default:
			FUNC1("Unknown Scan Backup operation.\n");
			break;
		}
	}
}