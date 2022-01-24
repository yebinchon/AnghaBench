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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtl_ps_ctl {scalar_t__ dot11_psmode; scalar_t__ inactive_pwrstate; } ;
struct TYPE_2__ {int /*<<< orphan*/  h2c_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct rtl_hal {int h2c_setinprogress; int last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  boxextcontent ;
typedef  scalar_t__ boxcontent ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ EACTIVE ; 
 scalar_t__ ERFOFF ; 
 int REG_CR ; 
 int REG_HMEBOX_0 ; 
 int REG_HMEBOX_1 ; 
 int REG_HMEBOX_2 ; 
 int REG_HMEBOX_3 ; 
 int REG_HMEBOX_EXT_0 ; 
 int REG_HMEBOX_EXT_1 ; 
 int REG_HMEBOX_EXT_2 ; 
 int REG_HMEBOX_EXT_3 ; 
 int REG_SYS_CFG1 ; 
 int REG_TXDMA_STATUS ; 
 int REG_TXPKT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 int FUNC7 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw, u8 element_id,
				      u32 cmd_len, u8 *cmdbuffer)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	u8 boxnum;
	u16 box_reg = 0, box_extreg = 0;
	u8 u1b_tmp;
	bool isfw_read = false;
	u8 buf_index = 0;
	bool bwrite_sucess = false;
	u8 wait_h2c_limmit = 100;
	u8 boxcontent[4], boxextcontent[4];
	u32 h2c_waitcounter = 0;
	unsigned long flag;
	u8 idx;

	if (ppsc->dot11_psmode != EACTIVE ||
	    ppsc->inactive_pwrstate == ERFOFF) {
		FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
			 "FillH2CCommand8192E(): Return because RF is off!!!\n");
		return;
	}

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD , "come in\n");

	/* 1. Prevent race condition in setting H2C cmd.
	 * (copy from MgntActSet_RF_State().)
	 */
	while (true) {
		FUNC9(&rtlpriv->locks.h2c_lock, flag);
		if (rtlhal->h2c_setinprogress) {
			FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
				 "H2C set in progress! Wait to set..element_id(%d).\n",
				  element_id);

			while (rtlhal->h2c_setinprogress) {
				FUNC10(&rtlpriv->locks.h2c_lock,
						       flag);
				h2c_waitcounter++;
				FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
					 "Wait 100 us (%d times)...\n",
					  h2c_waitcounter);
				FUNC11(100);

				if (h2c_waitcounter > 1000)
					return;
				FUNC9(&rtlpriv->locks.h2c_lock,
						  flag);
			}
			FUNC10(&rtlpriv->locks.h2c_lock, flag);
		} else {
			rtlhal->h2c_setinprogress = true;
			FUNC10(&rtlpriv->locks.h2c_lock, flag);
			break;
		}
	}

	while (!bwrite_sucess) {
		/* 2. Find the last BOX number which has been writen. */
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
			FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
				 "switch case %#x not processed\n", boxnum);
			break;
		}

		/* 3. Check if the box content is empty. */
		isfw_read = false;
		u1b_tmp = FUNC7(rtlpriv, REG_CR);

		if (u1b_tmp != 0xea) {
			isfw_read = true;
		} else {
			if (FUNC7(rtlpriv, REG_TXDMA_STATUS) == 0xea ||
			    FUNC7(rtlpriv, REG_TXPKT_EMPTY) == 0xea)
				FUNC8(rtlpriv, REG_SYS_CFG1 + 3, 0xff);
		}

		if (isfw_read) {
			wait_h2c_limmit = 100;
			isfw_read = FUNC1(hw, boxnum);
			while (!isfw_read) {
				wait_h2c_limmit--;
				if (wait_h2c_limmit == 0) {
					FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
						 "Waiting too long for FW read clear HMEBox(%d)!!!\n",
						 boxnum);
					break;
				}
				FUNC11(10);
				isfw_read =
				  FUNC1(hw, boxnum);
				u1b_tmp = FUNC7(rtlpriv, 0x130);
				FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
					 "Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\n",
					 boxnum, u1b_tmp);
			}
		}

		/* If Fw has not read the last
		 * H2C cmd, break and give up this H2C.
		 */
		if (!isfw_read) {
			FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
				 "Write H2C reg BOX[%d] fail,Fw don't read.\n",
				 boxnum);
			break;
		}
		/* 4. Fill the H2C cmd into box */
		FUNC3(boxcontent, 0, sizeof(boxcontent));
		FUNC3(boxextcontent, 0, sizeof(boxextcontent));
		boxcontent[0] = element_id;
		FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
			 "Write element_id box_reg(%4x) = %2x\n",
			  box_reg, element_id);

		switch (cmd_len) {
		case 1:
		case 2:
		case 3:
			/*boxcontent[0] &= ~(BIT(7));*/
			FUNC2((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index, cmd_len);

			for (idx = 0; idx < 4; idx++) {
				FUNC8(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		case 4:
		case 5:
		case 6:
		case 7:
			/*boxcontent[0] |= (BIT(7));*/
			FUNC2((u8 *)(boxextcontent),
			       cmdbuffer + buf_index+3, cmd_len-3);
			FUNC2((u8 *)(boxcontent) + 1,
			       cmdbuffer + buf_index, 3);

			for (idx = 0; idx < 4; idx++) {
				FUNC8(rtlpriv, box_extreg + idx,
					       boxextcontent[idx]);
			}

			for (idx = 0; idx < 4; idx++) {
				FUNC8(rtlpriv, box_reg + idx,
					       boxcontent[idx]);
			}
			break;
		default:
			FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
				 "switch case %#x not processed\n", cmd_len);
			break;
		}

		bwrite_sucess = true;

		rtlhal->last_hmeboxnum = boxnum + 1;
		if (rtlhal->last_hmeboxnum == 4)
			rtlhal->last_hmeboxnum = 0;

		FUNC0(rtlpriv, COMP_CMD, DBG_LOUD ,
			 "pHalData->last_hmeboxnum  = %d\n",
			  rtlhal->last_hmeboxnum);
	}

	FUNC9(&rtlpriv->locks.h2c_lock, flag);
	rtlhal->h2c_setinprogress = false;
	FUNC10(&rtlpriv->locks.h2c_lock, flag);

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD , "go out\n");
}