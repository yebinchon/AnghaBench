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
struct reportpwrstate_parm {int state; } ;
struct pwrctrl_priv {int cpwm_tog; int cpwm; int alives; int /*<<< orphan*/  mutex_lock; int /*<<< orphan*/  rpwm_check_timer; } ;
struct cmd_priv {int /*<<< orphan*/  cmd_queue_comp; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int CMD_ALIVE ; 
 int PS_STATE_S2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct _adapter *padapter,
			struct reportpwrstate_parm *preportpwrstate)
{
	struct pwrctrl_priv *pwrpriv = &(padapter->pwrctrlpriv);
	struct cmd_priv	*pcmdpriv = &(padapter->cmdpriv);

	if (pwrpriv->cpwm_tog == ((preportpwrstate->state) & 0x80))
		return;
	FUNC1(&padapter->pwrctrlpriv.rpwm_check_timer);
	FUNC2(&pwrpriv->mutex_lock);
	pwrpriv->cpwm = (preportpwrstate->state) & 0xf;
	if (pwrpriv->cpwm >= PS_STATE_S2) {
		if (pwrpriv->alives & CMD_ALIVE)
			FUNC0(&(pcmdpriv->cmd_queue_comp));
	}
	pwrpriv->cpwm_tog = (preportpwrstate->state) & 0x80;
	FUNC3(&pwrpriv->mutex_lock);
}