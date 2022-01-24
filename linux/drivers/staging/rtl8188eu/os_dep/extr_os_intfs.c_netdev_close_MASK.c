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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rf_pwrstate; int ps_flag; scalar_t__ bInternalAutoSuspend; } ;
struct adapter {int net_closed; int /*<<< orphan*/  bup; int /*<<< orphan*/  hw_init_completed; TYPE_1__ pwrctrlpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ rf_off ; 
 scalar_t__ rf_on ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *pnetdev)
{
	struct adapter *padapter = (struct adapter *)FUNC9(pnetdev);

	FUNC2(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - drv_close\n"));

	if (padapter->pwrctrlpriv.bInternalAutoSuspend) {
		if (padapter->pwrctrlpriv.rf_pwrstate == rf_off)
			padapter->pwrctrlpriv.ps_flag = true;
	}
	padapter->net_closed = true;

	if (padapter->pwrctrlpriv.rf_pwrstate == rf_on) {
		FUNC0("(2)88eu_drv - drv_close, bup =%d, hw_init_completed =%d\n",
			padapter->bup, padapter->hw_init_completed);

		/* s1. */
		if (pnetdev) {
			if (!FUNC10(pnetdev))
				FUNC4(pnetdev);
		}

		/* s2. */
		FUNC1(padapter);
		FUNC5(padapter, 500, false);
		/* s2-2.  indicate disconnect to os */
		FUNC8(padapter);
		/* s2-3. */
		FUNC6(padapter);
		/* s2-4. */
		FUNC7(padapter, true);
		/*  Close LED */
		FUNC3(padapter, LED_CTL_POWER_OFF);
	}

	FUNC2(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - drv_close\n"));
	FUNC0("-88eu_drv - drv_close, bup =%d\n", padapter->bup);
	return 0;
}