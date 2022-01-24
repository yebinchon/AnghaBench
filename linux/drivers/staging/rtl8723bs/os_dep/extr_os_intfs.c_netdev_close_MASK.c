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
struct pwrctrl_priv {int bInternalAutoSuspend; scalar_t__ rf_pwrstate; int ps_flag; } ;
struct net_device {int dummy; } ;
struct adapter {int net_closed; int netif_up; int /*<<< orphan*/  bup; int /*<<< orphan*/  hw_init_completed; } ;
struct TYPE_2__ {int bandroid_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 struct pwrctrl_priv* FUNC3 (struct adapter*) ; 
 TYPE_1__* FUNC4 (struct adapter*) ; 
 scalar_t__ rf_off ; 
 scalar_t__ rf_on ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*) ; 

__attribute__((used)) static int FUNC13(struct net_device *pnetdev)
{
	struct adapter *padapter = (struct adapter *)FUNC9(pnetdev);
	struct pwrctrl_priv *pwrctl = FUNC3(padapter);

	FUNC2(_module_os_intfs_c_, _drv_info_, ("+871x_drv - drv_close\n"));

	if (pwrctl->bInternalAutoSuspend == true) {
		/* rtw_pwr_wakeup(padapter); */
		if (pwrctl->rf_pwrstate == rf_off)
			pwrctl->ps_flag = true;
	}
	padapter->net_closed = true;
	padapter->netif_up = false;

/*if (!padapter->hw_init_completed)
	{
		DBG_871X("(1)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);

		padapter->bDriverStopped = true;

		rtw_dev_unload(padapter);
	}
	else*/
	if (pwrctl->rf_pwrstate == rf_on) {
		FUNC0("(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);

		/* s1. */
		if (pnetdev) {
			if (!FUNC10(pnetdev))
				FUNC11(pnetdev);
		}

		/* s2. */
		FUNC1(padapter);
		FUNC5(padapter, 500, false);
		/* s2-2.  indicate disconnect to os */
		FUNC8(padapter);
		/* s2-3. */
		FUNC6(padapter, 1);
		/* s2-4. */
		FUNC7(padapter, true);
	}

	FUNC12(padapter);
	FUNC4(padapter)->bandroid_scan = false;

	FUNC2(_module_os_intfs_c_, _drv_info_, ("-871x_drv - drv_close\n"));
	FUNC0("-871x_drv - drv_close, bup =%d\n", padapter->bup);

	return 0;
}