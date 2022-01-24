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
typedef  int u8 ;
struct pwrctrl_priv {int dtim; int bFwCurrentInPSMode; scalar_t__ pwr_mode; int /*<<< orphan*/  lock; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  HW_VAR_H2C_FW_PWRMODE ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC6(struct adapter *padapter, u8 dtim)
{
	struct pwrctrl_priv *pwrpriv = FUNC1(padapter);

	if (dtim <= 0 || dtim > 16)
		return;

	if (FUNC2(padapter) == true)
		return;

	FUNC3(&pwrpriv->lock);

	if (pwrpriv->dtim != dtim) {
		FUNC0("change DTIM from %d to %d, bFwCurrentInPSMode =%d, ps_mode =%d\n", pwrpriv->dtim, dtim,
			pwrpriv->bFwCurrentInPSMode, pwrpriv->pwr_mode);

		pwrpriv->dtim = dtim;
	}

	if ((pwrpriv->bFwCurrentInPSMode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
		u8 ps_mode = pwrpriv->pwr_mode;

		/* DBG_871X("change DTIM from %d to %d, ps_mode =%d\n", pwrpriv->dtim, dtim, ps_mode); */

		FUNC5(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
	}

	FUNC4(&pwrpriv->lock);
}