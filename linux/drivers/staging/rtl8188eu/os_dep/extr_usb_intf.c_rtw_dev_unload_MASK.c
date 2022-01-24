#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bInternalAutoSuspend; } ;
struct TYPE_4__ {scalar_t__ ack_tx; } ;
struct adapter {int bup; int bDriverStopped; int bSurpriseRemoved; TYPE_1__ pwrctrlpriv; TYPE_2__ xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_SCTX_DONE_DRV_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 

__attribute__((used)) static void FUNC6(struct adapter *padapter)
{
	FUNC0(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));

	if (padapter->bup) {
		FUNC1("===> rtw_dev_unload\n");
		padapter->bDriverStopped = true;
		if (padapter->xmitpriv.ack_tx)
			FUNC2(&padapter->xmitpriv, RTW_SCTX_DONE_DRV_STOP);
		/* s3. */
		FUNC5(padapter);
		/* s4. */
		if (!padapter->pwrctrlpriv.bInternalAutoSuspend)
			FUNC4(padapter);

		/* s5. */
		if (!padapter->bSurpriseRemoved) {
			FUNC3(padapter);
			padapter->bSurpriseRemoved = true;
		}

		padapter->bup = false;
	} else {
		FUNC0(_module_hci_intfs_c_, _drv_err_,
			 ("r871x_dev_unload():padapter->bup == false\n"));
	}

	FUNC1("<=== rtw_dev_unload\n");

	FUNC0(_module_hci_intfs_c_, _drv_err_, ("-rtw_dev_unload\n"));
}