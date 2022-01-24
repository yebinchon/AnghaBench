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
typedef  size_t u8 ;
struct TYPE_2__ {int /*<<< orphan*/  UndecoratedSmoothedPWDB; } ;
struct sta_info {int /*<<< orphan*/  rssi_level; TYPE_1__ rssi_stat; } ;
struct odm_dm_struct {struct sta_info** pODM_StaInfo; int /*<<< orphan*/  bUseRAMask; struct adapter* Adapter; } ;
struct adapter {scalar_t__ bDriverStopped; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sta_info*) ; 
 size_t ODM_ASSOCIATE_ENTRY_NUM ; 
 int /*<<< orphan*/  ODM_COMP_RA_MASK ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  ODM_DBG_TRACE ; 
 scalar_t__ FUNC1 (struct odm_dm_struct*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct odm_dm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,size_t,int /*<<< orphan*/ ) ; 

void FUNC4(struct odm_dm_struct *pDM_Odm)
{
	u8 i;
	struct adapter *pAdapter = pDM_Odm->Adapter;

	if (pAdapter->bDriverStopped) {
		FUNC2(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
		return;
	}

	if (!pDM_Odm->bUseRAMask) {
		FUNC2(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
		return;
	}

	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
		struct sta_info *pstat = pDM_Odm->pODM_StaInfo[i];

		if (FUNC0(pstat)) {
			if (FUNC1(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, false, &pstat->rssi_level)) {
				FUNC2(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD,
					     ("RSSI:%d, RSSI_LEVEL:%d\n",
					     pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
				FUNC3(pAdapter, i, pstat->rssi_level);
			}
		}
	}
}