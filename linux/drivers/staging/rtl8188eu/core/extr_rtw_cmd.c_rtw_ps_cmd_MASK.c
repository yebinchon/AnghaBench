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
struct drvextra_cmd_parm {int /*<<< orphan*/ * pbuf; int /*<<< orphan*/  ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int /*<<< orphan*/ * pbuf; int /*<<< orphan*/  ec_id; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  POWER_SAVING_CTRL_WK_CID ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _Set_Drv_Extra_CMD_ ; 
 int /*<<< orphan*/  FUNC0 (struct drvextra_cmd_parm*,struct drvextra_cmd_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drvextra_cmd_parm*) ; 
 struct drvextra_cmd_parm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_priv*,struct drvextra_cmd_parm*) ; 

u8 FUNC4(struct adapter *padapter)
{
	struct cmd_obj		*ppscmd;
	struct drvextra_cmd_parm	*pdrvextra_cmd_parm;
	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;

	ppscmd = FUNC2(sizeof(*ppscmd), GFP_ATOMIC);
	pdrvextra_cmd_parm = FUNC2(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
	if (!ppscmd || !pdrvextra_cmd_parm) {
		FUNC1(ppscmd);
		FUNC1(pdrvextra_cmd_parm);
		return _FAIL;
	}

	pdrvextra_cmd_parm->ec_id = POWER_SAVING_CTRL_WK_CID;
	pdrvextra_cmd_parm->pbuf = NULL;
	FUNC0(ppscmd, pdrvextra_cmd_parm, _Set_Drv_Extra_CMD_);

	return FUNC3(pcmdpriv, ppscmd);
}