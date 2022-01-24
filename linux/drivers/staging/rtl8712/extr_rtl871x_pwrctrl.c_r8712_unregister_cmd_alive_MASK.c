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
struct pwrctrl_priv {scalar_t__ cpwm; scalar_t__ pwr_mode; scalar_t__ alives; int /*<<< orphan*/  mutex_lock; } ;
struct _adapter {int /*<<< orphan*/  mlmepriv; struct pwrctrl_priv pwrctrlpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ALIVE ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 int /*<<< orphan*/  PS_STATE_S0 ; 
 scalar_t__ PS_STATE_S2 ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pwrctrl_priv*,int /*<<< orphan*/ ) ; 

void FUNC5(struct _adapter *padapter)
{
	struct pwrctrl_priv *pwrctrl = &padapter->pwrctrlpriv;

	FUNC1(&pwrctrl->mutex_lock);
	FUNC4(pwrctrl, CMD_ALIVE);
	if ((pwrctrl->cpwm > PS_STATE_S2) &&
	   (pwrctrl->pwr_mode > PS_MODE_ACTIVE)) {
		if ((pwrctrl->alives == 0) &&
		    (FUNC0(&padapter->mlmepriv,
		     _FW_UNDER_LINKING) != true)) {
			FUNC3(padapter, PS_STATE_S0);
		}
	}
	FUNC2(&pwrctrl->mutex_lock);
}