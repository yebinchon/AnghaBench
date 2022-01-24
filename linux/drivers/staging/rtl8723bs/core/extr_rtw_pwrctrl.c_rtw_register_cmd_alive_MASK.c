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
struct pwrctrl_priv {scalar_t__ cpwm; scalar_t__ rpwm; int /*<<< orphan*/  lock; int /*<<< orphan*/  alives; scalar_t__ bFwCurrentInPSMode; } ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ALIVE ; 
 scalar_t__ PS_STATE_S2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_pwrctrl_c_ ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pwrctrl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__) ; 

s32 FUNC6(struct adapter *padapter)
{
	s32 res;
	struct pwrctrl_priv *pwrctrl;
	u8 pslv;

	res = _SUCCESS;
	pwrctrl = FUNC1(padapter);
	pslv = PS_STATE_S2;

	FUNC2(&pwrctrl->lock);

	FUNC4(pwrctrl, CMD_ALIVE);

	if (pwrctrl->bFwCurrentInPSMode) {
		FUNC0(_module_rtl871x_pwrctrl_c_, _drv_info_,
				 ("rtw_register_cmd_alive: cpwm = 0x%02x alives = 0x%08x\n",
				  pwrctrl->cpwm, pwrctrl->alives));

		if (pwrctrl->cpwm < pslv) {
			if (pwrctrl->cpwm < PS_STATE_S2)
				res = _FAIL;
			if (pwrctrl->rpwm < pslv)
				FUNC5(padapter, pslv);
		}
	}

	FUNC3(&pwrctrl->lock);

	if (_FAIL == res)
		if (pwrctrl->cpwm >= PS_STATE_S2)
			res = _SUCCESS;

	return res;
}