#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dig_t {int cur_igvalue; } ;
struct TYPE_2__ {int xaagccore1; } ;
struct rtl_phy {int current_io_type; int set_io_inprogress; TYPE_1__ initgain_backup; int /*<<< orphan*/  current_channel; } ;
struct rtl_priv {struct dig_t dm_digtable; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
#define  IO_CMD_PAUSE_BAND0_DM_BY_SCAN 129 
#define  IO_CMD_RESUME_DM_BY_SCAN 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

	FUNC0(rtlpriv, COMP_CMD, DBG_TRACE,
		 "--->Cmd(%#x), set_io_inprogress(%d)\n",
		  rtlphy->current_io_type, rtlphy->set_io_inprogress);
	switch (rtlphy->current_io_type) {
	case IO_CMD_RESUME_DM_BY_SCAN:
		dm_digtable->cur_igvalue = rtlphy->initgain_backup.xaagccore1;
		FUNC1(hw);
		FUNC2(hw, rtlphy->current_channel);
		break;
	case IO_CMD_PAUSE_BAND0_DM_BY_SCAN:
		rtlphy->initgain_backup.xaagccore1 = dm_digtable->cur_igvalue;
		dm_digtable->cur_igvalue = 0x17;
		FUNC1(hw);
		break;
	default:
		FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
			 "switch case %#x not processed\n",
			 rtlphy->current_io_type);
		break;
	}
	rtlphy->set_io_inprogress = false;
	FUNC0(rtlpriv, COMP_CMD, DBG_TRACE,
		 "(%#x)\n", rtlphy->current_io_type);
}