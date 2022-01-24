#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct adapter {scalar_t__ bDriverStopped; } ;
struct TYPE_11__ {TYPE_2__** pODM_StaInfo; int /*<<< orphan*/  bUseRAMask; struct adapter* Adapter; } ;
struct TYPE_9__ {int /*<<< orphan*/  UndecoratedSmoothedPWDB; } ;
struct TYPE_10__ {int /*<<< orphan*/  rssi_level; TYPE_1__ rssi_stat; int /*<<< orphan*/  hwaddr; } ;
typedef  TYPE_2__* PSTA_INFO_T ;
typedef  TYPE_3__* PDM_ODM_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 size_t ODM_ASSOCIATE_ENTRY_NUM ; 
 int /*<<< orphan*/  ODM_COMP_RA_MASK ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  ODM_DBG_TRACE ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(PDM_ODM_T pDM_Odm)
{
	u8 i;
	struct adapter *padapter =  pDM_Odm->Adapter;

	if (padapter->bDriverStopped) {
		FUNC3(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
		return;
	}

	if (!pDM_Odm->bUseRAMask) {
		FUNC3(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
		return;
	}

	/* printk("==> %s\n", __func__); */

	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
		PSTA_INFO_T pstat = pDM_Odm->pODM_StaInfo[i];

		if (FUNC1(pstat)) {
			if (FUNC0(pstat->hwaddr))  /* if (psta->mac_id == 1) */
				continue;
			if (FUNC0(pstat->hwaddr))
				continue;

			if (true == FUNC2(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, false, &pstat->rssi_level)) {
				FUNC3(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
				/* printk("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level); */
				FUNC4(pstat, pstat->rssi_level);
			}

		}
	}
}