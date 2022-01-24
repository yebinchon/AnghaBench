#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pwrctrl_priv {int bInSuspend; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct adapter*) ; 
 struct pwrctrl_priv* FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *pnetdev)
{
	int ret;
	struct adapter *padapter = (struct adapter *)FUNC6(pnetdev);
	struct pwrctrl_priv *pwrctrlpriv = FUNC3(padapter);

	if (pwrctrlpriv->bInSuspend == true) {
		FUNC0("+871x_drv - drv_open, bInSuspend =%d\n", pwrctrlpriv->bInSuspend);
		return 0;
	}

	if (FUNC4(&(FUNC2(padapter)->hw_init_mutex)))
		return -1;

	ret = FUNC1(pnetdev);
	FUNC5(&(FUNC2(padapter)->hw_init_mutex));

	return ret;
}