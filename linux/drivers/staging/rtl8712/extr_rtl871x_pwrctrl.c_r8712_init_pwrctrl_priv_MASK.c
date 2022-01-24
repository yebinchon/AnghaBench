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
struct pwrctrl_priv {int tog; int /*<<< orphan*/  rpwm_check_timer; int /*<<< orphan*/  rpwm_workitem; int /*<<< orphan*/  SetPSModeWorkItem; scalar_t__ smart_ps; int /*<<< orphan*/  pwr_mode; int /*<<< orphan*/  cpwm; int /*<<< orphan*/  mutex_lock; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_MODE_ACTIVE ; 
 int /*<<< orphan*/  PS_STATE_S4 ; 
 int /*<<< orphan*/  SetPSModeWorkItemCallback ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpwm_check_handler ; 
 int /*<<< orphan*/  rpwm_workitem_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct _adapter *padapter)
{
	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;

	FUNC1((unsigned char *)pwrctrlpriv, 0, sizeof(struct pwrctrl_priv));
	FUNC2(&pwrctrlpriv->mutex_lock);
	pwrctrlpriv->cpwm = PS_STATE_S4;
	pwrctrlpriv->pwr_mode = PS_MODE_ACTIVE;
	pwrctrlpriv->smart_ps = 0;
	pwrctrlpriv->tog = 0x80;
/* clear RPWM to ensure driver and fw back to initial state. */
	FUNC3(padapter, 0x1025FE58, 0);
	FUNC0(&pwrctrlpriv->SetPSModeWorkItem, SetPSModeWorkItemCallback);
	FUNC0(&pwrctrlpriv->rpwm_workitem, rpwm_workitem_callback);
	FUNC4(&pwrctrlpriv->rpwm_check_timer, rpwm_check_handler, 0);
}