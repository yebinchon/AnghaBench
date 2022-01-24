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
struct rtl_phy {int set_io_inprogress; int current_io_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum io_type { ____Placeholder_io_type } io_type ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
#define  IO_CMD_PAUSE_DM_BY_SCAN 129 
#define  IO_CMD_RESUME_DM_BY_SCAN 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

bool FUNC4(struct ieee80211_hw *hw, enum io_type iotype)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	bool postprocessing = false;

	FUNC0(rtlpriv, COMP_CMD, DBG_TRACE,
		 "-->IO Cmd(%#x), set_io_inprogress(%d)\n",
		 iotype, rtlphy->set_io_inprogress);
	do {
		switch (iotype) {
		case IO_CMD_RESUME_DM_BY_SCAN:
			FUNC0(rtlpriv, COMP_CMD, DBG_TRACE,
				 "[IO CMD] Resume DM after scan\n");
			postprocessing = true;
			break;
		case IO_CMD_PAUSE_DM_BY_SCAN:
			FUNC0(rtlpriv, COMP_CMD, DBG_TRACE,
				 "[IO CMD] Pause DM before scan\n");
			postprocessing = true;
			break;
		default:
			FUNC1("switch case %#x not processed\n",
			       iotype);
			break;
		}
	} while (false);
	if (postprocessing && !rtlphy->set_io_inprogress) {
		rtlphy->set_io_inprogress = true;
		rtlphy->current_io_type = iotype;
	} else {
		return false;
	}
	FUNC2(hw);
	FUNC0(rtlpriv, COMP_CMD, DBG_TRACE, "<--IO Type(%#x)\n", iotype);
	return true;
}