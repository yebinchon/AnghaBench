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
typedef  int /*<<< orphan*/  u32 ;
struct disconnect_parm {int /*<<< orphan*/  deauth_timeout_ms; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _DisConnect_CMD_ ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_cmd_c_ ; 
 scalar_t__ FUNC1 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*,struct disconnect_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct disconnect_parm*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC5 (int) ; 

u8 FUNC6(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueue) /* for sta_mode */
{
	struct cmd_obj *cmdobj = NULL;
	struct disconnect_parm *param = NULL;
	struct cmd_priv *cmdpriv = &padapter->cmdpriv;
	u8 res = _SUCCESS;

	FUNC0(_module_rtl871x_cmd_c_, _drv_notice_, ("+rtw_disassoc_cmd\n"));

	/* prepare cmd parameter */
	param = FUNC5(sizeof(*param));
	if (param == NULL) {
		res = _FAIL;
		goto exit;
	}
	param->deauth_timeout_ms = deauth_timeout_ms;

	if (enqueue) {
		/* need enqueue, prepare cmd_obj and enqueue */
		cmdobj = FUNC5(sizeof(*cmdobj));
		if (cmdobj == NULL) {
			res = _FAIL;
			FUNC3(param);
			goto exit;
		}
		FUNC2(cmdobj, param, _DisConnect_CMD_);
		res = FUNC4(cmdpriv, cmdobj);
	} else {
		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
		if (H2C_SUCCESS != FUNC1(padapter, (u8 *)param))
			res = _FAIL;
		FUNC3(param);
	}

exit:
	return res;
}