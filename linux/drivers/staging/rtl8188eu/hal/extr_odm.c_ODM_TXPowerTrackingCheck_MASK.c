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
struct TYPE_2__ {int TM_Trigger; } ;
struct odm_dm_struct {int SupportAbility; TYPE_1__ RFCalibrateInfo; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ODM_RF_TX_PWR_TRACK ; 
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RF_T_METER_88E ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

void FUNC3(struct odm_dm_struct *pDM_Odm)
{
	/*  2011/09/29 MH In HW integration first stage, we provide 4 different handle to operate */
	/*  at the same time. In the stage2/3, we need to prive universal interface and merge all */
	/*  HW dynamic mechanism. */
	struct adapter *Adapter = pDM_Odm->Adapter;

	if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
		return;

	if (!pDM_Odm->RFCalibrateInfo.TM_Trigger) {		/* at least delay 1 sec */
		FUNC1(Adapter, RF_PATH_A, RF_T_METER_88E, FUNC0(17) | FUNC0(16), 0x03);

		pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
		return;
	} else {
		FUNC2(Adapter);
		pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
	}
}