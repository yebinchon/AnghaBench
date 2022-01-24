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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  h2c_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct rtl_hal {int h2c_setinprogress; scalar_t__ last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  boxextcontent ;
typedef  scalar_t__ boxcontent ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ REG_HMEBOX_0 ; 
 scalar_t__ REG_HMEBOX_1 ; 
 scalar_t__ REG_HMEBOX_2 ; 
 scalar_t__ REG_HMEBOX_3 ; 
 scalar_t__ REG_HMEBOX_EXT_0 ; 
 scalar_t__ REG_HMEBOX_EXT_1 ; 
 scalar_t__ REG_HMEBOX_EXT_2 ; 
 scalar_t__ REG_HMEBOX_EXT_3 ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ieee80211_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct rtl_hal* FUNC6 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC8 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw, u8 element_id,
				       u32 cmd_len, u8 *cmdbuffer)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_hal *rtlhal = FUNC6(FUNC7(hw));
	u8 boxnum;
	u16 box_reg = 0, box_extreg = 0;
	u8 u1b_tmp;
	bool isfw_read = false;
	u8 buf_index = 0;
	bool bwrite_sucess = false;
	u8 wait_h2c_limmit = 100;
	u8 wait_writeh2c_limmit = 100;
	u8 boxcontent[4], boxextcontent[2];
	u32 h2c_waitcounter = 0;
	unsigned long flag;
	u8 idx;

	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "come in\n");

	while (true) {
		FUNC10(&rtlpriv->locks.h2c_lock, flag);
		if (rtlhal->h2c_setinprogress) {
			FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
				 "H2C set in progress! Wait to set..element_id(%d).\n",
				 element_id);

			while (rtlhal->h2c_setinprogress) {
				FUNC11(&rtlpriv->locks.h2c_lock,
						       flag);
				h2c_waitcounter++;
				FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
					 "Wait 100 us (%d times)...\n",
					  h2c_waitcounter);
				FUNC12(100);

				if (h2c_waitcounter > 1000)
					return;
				FUNC10(&rtlpriv->locks.h2c_lock,
						  flag);
			}
			FUNC11(&rtlpriv->locks.h2c_lock, flag);
		} else {
			rtlhal->h2c_setinprogress = true;
			FUNC11(&rtlpriv->locks.h2c_lock, flag);
			break;
		}
	}

	while (!bwrite_sucess) {
		wait_writeh2c_limmit--;
		if (wait_writeh2c_limmit == 0) {
			FUNC5("Write H2C fail because no trigger for FW INT!\n");
			break;
		}

		boxnum = rtlhal->last_hmeboxnum;
		switch (boxnum) {
		case 0:
			box_reg = REG_HMEBOX_0;
			box_extreg = REG_HMEBOX_EXT_0;
			break;
		case 1:
			box_reg = REG_HMEBOX_1;
			box_extreg = REG_HMEBOX_EXT_1;
			break;
		case 2:
			box_reg = REG_HMEBOX_2;
			box_extreg = REG_HMEBOX_EXT_2;
			break;
		case 3:
			box_reg = REG_HMEBOX_3;
			box_extreg = REG_HMEBOX_EXT_3;
			break;
		default:
			FUNC5("switch case %#x not processed\n",
			       boxnum);
			break;
		}

		isfw_read = FUNC2(hw, boxnum);
		while (!isfw_read) {

			wait_h2c_limmit--;
			if (wait_h2c_limmit == 0) {
				FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
					 "Waiting too long for FW read clear HMEBox(%d)!\n",
					 boxnum);
				break;
			}

			FUNC12(10);

			isfw_read = FUNC2(hw,
								boxnum);
			u1b_tmp = FUNC8(rtlpriv, 0x1BF);
			FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
				 "Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\n",
				 boxnum, u1b_tmp);
		}

		if (!isfw_read) {
			FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
				 "Write H2C register BOX[%d] fail!!!!! Fw do not read.\n",
				 boxnum);
			break;
		}

		FUNC4(boxcontent, 0, sizeof(boxcontent));
		FUNC4(boxextcontent, 0, sizeof(boxextcontent));
		boxcontent[0] = element_id;
		FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
			 "Write element_id box_reg(%4x) = %2x\n",
			  box_reg, element_id);

		switch (cmd_len) {
		case 1:
			boxcontent[0] &= ~(FUNC0(7));
			FUNC3((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index, 1);

			for (idx = 0; idx < 4; idx++) {
				FUNC9(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		case 2:
			boxcontent[0] &= ~(FUNC0(7));
			FUNC3((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index, 2);

			for (idx = 0; idx < 4; idx++) {
				FUNC9(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		case 3:
			boxcontent[0] &= ~(FUNC0(7));
			FUNC3((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index, 3);

			for (idx = 0; idx < 4; idx++) {
				FUNC9(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		case 4:
			boxcontent[0] |= (FUNC0(7));
			FUNC3((u8 *)(boxextcontent),
			       cmdbuffer + buf_index, 2);
			FUNC3((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index + 2, 2);

			for (idx = 0; idx < 2; idx++) {
				FUNC9(rtlpriv, box_extreg + idx,
					       boxextcontent[idx]);
			}

			for (idx = 0; idx < 4; idx++) {
				FUNC9(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		case 5:
			boxcontent[0] |= (FUNC0(7));
			FUNC3((u8 *)(boxextcontent),
			       cmdbuffer + buf_index, 2);
			FUNC3((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index + 2, 3);

			for (idx = 0; idx < 2; idx++) {
				FUNC9(rtlpriv, box_extreg + idx,
					       boxextcontent[idx]);
			}

			for (idx = 0; idx < 4; idx++) {
				FUNC9(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		default:
			FUNC5("switch case %#x not processed\n",
			       cmd_len);
			break;
		}

		bwrite_sucess = true;

		rtlhal->last_hmeboxnum = boxnum + 1;
		if (rtlhal->last_hmeboxnum == 4)
			rtlhal->last_hmeboxnum = 0;

		FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
			 "pHalData->last_hmeboxnum  = %d\n",
			  rtlhal->last_hmeboxnum);
	}

	FUNC10(&rtlpriv->locks.h2c_lock, flag);
	rtlhal->h2c_setinprogress = false;
	FUNC11(&rtlpriv->locks.h2c_lock, flag);

	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "go out\n");
}