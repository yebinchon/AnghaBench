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
struct pwrctrl_priv {scalar_t__ cpwm; int /*<<< orphan*/  mutex_lock; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ALIVE ; 
 int EINVAL ; 
 scalar_t__ PS_STATE_S2 ; 
 int /*<<< orphan*/  PS_STATE_S3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwrctrl_priv*,int /*<<< orphan*/ ) ; 

int FUNC4(struct _adapter *padapter)
{
	int res = 0;
	struct pwrctrl_priv *pwrctrl = &padapter->pwrctrlpriv;

	FUNC0(&pwrctrl->mutex_lock);
	FUNC3(pwrctrl, CMD_ALIVE);
	if (pwrctrl->cpwm < PS_STATE_S2) {
		FUNC2(padapter, PS_STATE_S3);
		res = -EINVAL;
	}
	FUNC1(&pwrctrl->mutex_lock);
	return res;
}