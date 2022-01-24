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
struct hal_com_data {int LastHMEBoxNum; } ;
struct adapter {scalar_t__ bSurpriseRemoved; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int /*<<< orphan*/  h2c_fwcmd_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 
 struct adapter* FUNC2 (struct adapter*) ; 
 int MAX_H2C_BOX_NUMS ; 
 int MESSAGE_BOX_SIZE ; 
 int REG_HMEBOX_0 ; 
 int REG_HMEBOX_EXT0_8723B ; 
 int RTL8723B_EX_MESSAGE_BOX_SIZE ; 
 int RTL8723B_MAX_CMD_LEN ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 
 TYPE_1__* FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int,int) ; 

s32 FUNC9(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer)
{
	u8 h2c_box_num;
	u32 msgbox_addr;
	u32 msgbox_ex_addr = 0;
	struct hal_com_data *pHalData;
	u32 h2c_cmd = 0;
	u32 h2c_cmd_ex = 0;
	s32 ret = _FAIL;

	padapter = FUNC2(padapter);
	pHalData = FUNC1(padapter);
	if (FUNC6(&(FUNC4(padapter)->h2c_fwcmd_mutex)))
		return ret;

	if (!pCmdBuffer) {
		goto exit;
	}

	if (CmdLen > RTL8723B_MAX_CMD_LEN) {
		goto exit;
	}

	if (padapter->bSurpriseRemoved)
		goto exit;

	/* pay attention to if  race condition happened in  H2C cmd setting. */
	do {
		h2c_box_num = pHalData->LastHMEBoxNum;

		if (!FUNC3(padapter, h2c_box_num)) {
			FUNC0(" fw read cmd failed...\n");
			/* DBG_8192C(" 0x1c0: 0x%8x\n", rtw_read32(padapter, 0x1c0)); */
			/* DBG_8192C(" 0x1c4: 0x%8x\n", rtw_read32(padapter, 0x1c4)); */
			goto exit;
		}

		if (CmdLen <= 3)
			FUNC5((u8 *)(&h2c_cmd)+1, pCmdBuffer, CmdLen);
		else {
			FUNC5((u8 *)(&h2c_cmd)+1, pCmdBuffer, 3);
			FUNC5((u8 *)(&h2c_cmd_ex), pCmdBuffer+3, CmdLen-3);
/* 			*(u8 *)(&h2c_cmd) |= BIT(7); */
		}

		*(u8 *)(&h2c_cmd) |= ElementID;

		if (CmdLen > 3) {
			msgbox_ex_addr = REG_HMEBOX_EXT0_8723B + (h2c_box_num*RTL8723B_EX_MESSAGE_BOX_SIZE);
			FUNC8(padapter, msgbox_ex_addr, h2c_cmd_ex);
		}
		msgbox_addr = REG_HMEBOX_0 + (h2c_box_num*MESSAGE_BOX_SIZE);
		FUNC8(padapter, msgbox_addr, h2c_cmd);

		/* DBG_8192C("MSG_BOX:%d, CmdLen(%d), CmdID(0x%x), reg:0x%x =>h2c_cmd:0x%.8x, reg:0x%x =>h2c_cmd_ex:0x%.8x\n" */
		/* 	, pHalData->LastHMEBoxNum , CmdLen, ElementID, msgbox_addr, h2c_cmd, msgbox_ex_addr, h2c_cmd_ex); */

		pHalData->LastHMEBoxNum = (h2c_box_num+1) % MAX_H2C_BOX_NUMS;

	} while (0);

	ret = _SUCCESS;

exit:

	FUNC7(&(FUNC4(padapter)->h2c_fwcmd_mutex));
	return ret;
}