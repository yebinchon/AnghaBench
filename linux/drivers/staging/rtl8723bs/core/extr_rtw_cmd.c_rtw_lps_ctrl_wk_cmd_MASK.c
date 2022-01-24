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
typedef  scalar_t__ u8 ;
struct drvextra_cmd_parm {int /*<<< orphan*/ * pbuf; scalar_t__ size; scalar_t__ type; int /*<<< orphan*/  ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPS_CTRL_WK_CID ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _Set_Drv_Extra ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct drvextra_cmd_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC5 (int) ; 

u8 FUNC6(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
{
	struct cmd_obj	*ph2c;
	struct drvextra_cmd_parm	*pdrvextra_cmd_parm;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	/* struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter); */
	u8 res = _SUCCESS;

	/* if (!pwrctrlpriv->bLeisurePs) */
	/* 	return res; */

	if (enqueue) {
		ph2c = FUNC5(sizeof(struct cmd_obj));
		if (ph2c == NULL) {
			res = _FAIL;
			goto exit;
		}

		pdrvextra_cmd_parm = FUNC5(sizeof(struct drvextra_cmd_parm));
		if (pdrvextra_cmd_parm == NULL) {
			FUNC2(ph2c);
			res = _FAIL;
			goto exit;
		}

		pdrvextra_cmd_parm->ec_id = LPS_CTRL_WK_CID;
		pdrvextra_cmd_parm->type = lps_ctrl_type;
		pdrvextra_cmd_parm->size = 0;
		pdrvextra_cmd_parm->pbuf = NULL;

		FUNC1(ph2c, pdrvextra_cmd_parm, FUNC0(_Set_Drv_Extra));

		res = FUNC4(pcmdpriv, ph2c);
	} else {
		FUNC3(padapter, lps_ctrl_type);
	}

exit:
	return res;
}