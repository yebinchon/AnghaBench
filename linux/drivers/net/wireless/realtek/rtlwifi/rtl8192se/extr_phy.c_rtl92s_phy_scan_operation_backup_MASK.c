#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_CMD_PAUSE_DM_BY_SCAN ; 
 int /*<<< orphan*/  FW_CMD_RESUME_DM_BY_SCAN ; 
#define  SCAN_OPT_BACKUP 129 
#define  SCAN_OPT_RESTORE 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 

void FUNC5(struct ieee80211_hw *hw,
				      u8 operation)
{
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));

	if (!FUNC0(rtlhal)) {
		switch (operation) {
		case SCAN_OPT_BACKUP:
			FUNC2(hw, FW_CMD_PAUSE_DM_BY_SCAN);
			break;
		case SCAN_OPT_RESTORE:
			FUNC2(hw, FW_CMD_RESUME_DM_BY_SCAN);
			break;
		default:
			FUNC1("Unknown operation\n");
			break;
		}
	}
}