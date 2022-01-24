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
typedef  int u8 ;
struct hal_com_data {int /*<<< orphan*/  odmpriv; } ;
struct adapter {int hw_init_completed; int /*<<< orphan*/  mlmepriv; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  HW_VAR_FWLPS_RF_ON ; 
 int /*<<< orphan*/  ODM_CMNINFO_BT_ENABLED ; 
 int /*<<< orphan*/  ODM_CMNINFO_LINK ; 
 int /*<<< orphan*/  ODM_CMNINFO_STATION_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 TYPE_1__* FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 

void FUNC10(struct adapter *Adapter)
{
	bool bFwCurrentInPSMode = false;
	bool bFwPSAwake = true;
	u8 hw_init_completed = false;
	struct hal_com_data *pHalData = FUNC0(Adapter);

	hw_init_completed = Adapter->hw_init_completed;

	if (hw_init_completed == false)
		goto skip_dm;

	bFwCurrentInPSMode = FUNC3(Adapter)->bFwCurrentInPSMode;
	FUNC8(Adapter, HW_VAR_FWLPS_RF_ON, (u8 *)(&bFwPSAwake));

	if (
		(hw_init_completed == true) &&
		((!bFwCurrentInPSMode) && bFwPSAwake)
	) {
		/*  */
		/*  Calculate Tx/Rx statistics. */
		/*  */
		FUNC5(Adapter);
		FUNC7(Adapter);
	}

	/* ODM */
	if (hw_init_completed == true) {
		u8 bLinked = false;
		u8 bsta_state = false;
		bool bBtDisabled = true;

		if (FUNC9(Adapter)) {
			bLinked = true;
			if (FUNC4(&Adapter->mlmepriv, WIFI_STATION_STATE))
				bsta_state = true;
		}

		FUNC1(&pHalData->odmpriv, ODM_CMNINFO_LINK, bLinked);
		FUNC1(&pHalData->odmpriv, ODM_CMNINFO_STATION_STATE, bsta_state);

		/* ODM_CmnInfoUpdate(&pHalData->odmpriv , ODM_CMNINFO_RSSI_MIN, pdmpriv->MinUndecoratedPWDBForDM); */

		bBtDisabled = FUNC6(Adapter);

		FUNC1(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));

		FUNC2(&pHalData->odmpriv);
	}

skip_dm:
	return;
}