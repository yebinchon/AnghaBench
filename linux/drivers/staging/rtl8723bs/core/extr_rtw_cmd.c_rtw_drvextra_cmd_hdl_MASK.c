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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int dummy; } ;
struct drvextra_cmd_parm {int ec_id; scalar_t__ size; scalar_t__ pbuf; int /*<<< orphan*/  type; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
#define  BTINFO_WK_CID 138 
#define  C2H_WK_CID 137 
#define  CHECK_HIQ_WK_CID 136 
#define  DM_IN_LPS_WK_CID 135 
#define  DM_RA_MSK_WK_CID 134 
#define  DYNAMIC_CHK_WK_CID 133 
#define  FREE_ASSOC_RESOURCES 132 
 int /*<<< orphan*/  H2C_PARAMETERS_ERROR ; 
 int /*<<< orphan*/  H2C_SUCCESS ; 
 int /*<<< orphan*/  HW_VAR_C2H_HANDLE ; 
#define  LPS_CHANGE_DTIM_CID 131 
#define  LPS_CTRL_WK_CID 130 
#define  POWER_SAVING_CTRL_WK_CID 129 
#define  RESET_SECURITYPRIV 128 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 

u8 FUNC12(struct adapter *padapter, unsigned char *pbuf)
{
	struct drvextra_cmd_parm *pdrvextra_cmd;

	if (!pbuf)
		return H2C_PARAMETERS_ERROR;

	pdrvextra_cmd = (struct drvextra_cmd_parm *)pbuf;

	switch (pdrvextra_cmd->ec_id) {
	case DYNAMIC_CHK_WK_CID:/* only  primary padapter go to this cmd, but execute dynamic_chk_wk_hdl() for two interfaces */
		FUNC0(padapter);
		break;
	case POWER_SAVING_CTRL_WK_CID:
		FUNC10(padapter);
		break;
	case LPS_CTRL_WK_CID:
		FUNC2(padapter, (u8)pdrvextra_cmd->type);
		break;
	case DM_IN_LPS_WK_CID:
		FUNC5(padapter);
		break;
	case LPS_CHANGE_DTIM_CID:
		FUNC9(padapter, (u8)pdrvextra_cmd->type);
		break;
	case CHECK_HIQ_WK_CID:
		FUNC4(padapter);
		break;
	/* add for CONFIG_IEEE80211W, none 11w can use it */
	case RESET_SECURITYPRIV:
		FUNC11(padapter);
		break;
	case FREE_ASSOC_RESOURCES:
		FUNC7(padapter, 1);
		break;
	case C2H_WK_CID:
		FUNC8(padapter, HW_VAR_C2H_HANDLE, pdrvextra_cmd->pbuf, pdrvextra_cmd->size);
		break;
	case DM_RA_MSK_WK_CID:
		FUNC6(padapter, (struct sta_info *)pdrvextra_cmd->pbuf);
		break;
	case BTINFO_WK_CID:
		FUNC3(padapter, pdrvextra_cmd->pbuf, pdrvextra_cmd->size);
		break;
	default:
		break;
	}

	if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0) {
		FUNC1(pdrvextra_cmd->pbuf);
	}

	return H2C_SUCCESS;
}