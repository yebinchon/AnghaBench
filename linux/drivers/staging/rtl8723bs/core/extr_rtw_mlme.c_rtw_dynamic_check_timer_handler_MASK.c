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
typedef  scalar_t__ u8 ;
struct adapter {int hw_init_completed; int bDriverStopped; int bSurpriseRemoved; int net_closed; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 int FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct adapter*,int) ; 

void FUNC10(struct adapter *adapter)
{
	if (!adapter)
		return;

	if (adapter->hw_init_completed == false)
		return;

	if ((adapter->bDriverStopped == true) || (adapter->bSurpriseRemoved == true))
		return;

	if (adapter->net_closed == true)
		return;

	if (FUNC4(adapter))
		FUNC0("IsBtDisabled =%d, IsBtControlLps =%d\n", FUNC3(adapter), FUNC2(adapter));

	if ((FUNC1(adapter)->bFwCurrentInPSMode == true)
		&& (FUNC2(adapter) == false)
		) {
		u8 bEnterPS;

		FUNC5(adapter);

		bEnterPS = FUNC9(adapter, 1);
		if (bEnterPS) {
			/* rtw_lps_ctrl_wk_cmd(adapter, LPS_CTRL_ENTER, 1); */
			FUNC8(adapter);
		} else {
			/* call rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_LEAVE, 1) in traffic_status_watchdog() */
		}

	} else {
		if (FUNC4(adapter)) {
			FUNC7(adapter);
		}
	}

	/* auto site survey */
	FUNC6(adapter);
}