#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  TYPE_1__* pDIG_T ;
struct TYPE_6__ {int /*<<< orphan*/  IGIBackup; int /*<<< orphan*/  CurIGValue; } ;
struct TYPE_7__ {int SupportAbility; int TxHangFlg; TYPE_1__ DM_DigTable; } ;
typedef  TYPE_2__* PDM_ODM_T ;
typedef  int ODM_Pause_DIG_TYPE ;

/* Variables and functions */
 int ODM_BB_ADAPTIVITY ; 
 int ODM_BB_DIG ; 
 int ODM_BB_FA_CNT ; 
 int /*<<< orphan*/  ODM_CMNINFO_ABILITY ; 
 int /*<<< orphan*/  ODM_COMP_DIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
#define  ODM_PAUSE_DIG 129 
#define  ODM_RESUME_DIG 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC3(
	void *pDM_VOID,
	ODM_Pause_DIG_TYPE PauseType,
	u8 IGIValue
)
{
	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
	static bool bPaused;

	FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));

	if (
		(pDM_Odm->SupportAbility & ODM_BB_ADAPTIVITY) &&
		pDM_Odm->TxHangFlg == true
	) {
		FUNC1(
			pDM_Odm,
			ODM_COMP_DIG,
			ODM_DBG_LOUD,
			("odm_PauseDIG(): Dynamic adjust threshold in progress !!\n")
		);
		return;
	}

	if (
		!bPaused && (!(pDM_Odm->SupportAbility & ODM_BB_DIG) ||
		!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))
	){
		FUNC1(
			pDM_Odm,
			ODM_COMP_DIG,
			ODM_DBG_LOUD,
			("odm_PauseDIG(): Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n")
		);
		return;
	}

	switch (PauseType) {
	/* 1 Pause DIG */
	case ODM_PAUSE_DIG:
		/* 2 Disable DIG */
		FUNC0(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility & (~ODM_BB_DIG));
		FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Pause DIG !!\n"));

		/* 2 Backup IGI value */
		if (!bPaused) {
			pDM_DigTable->IGIBackup = pDM_DigTable->CurIGValue;
			bPaused = true;
		}
		FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Backup IGI  = 0x%x\n", pDM_DigTable->IGIBackup));

		/* 2 Write new IGI value */
		FUNC2(pDM_Odm, IGIValue);
		FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write new IGI = 0x%x\n", IGIValue));
		break;

	/* 1 Resume DIG */
	case ODM_RESUME_DIG:
		if (bPaused) {
			/* 2 Write backup IGI value */
			FUNC2(pDM_Odm, pDM_DigTable->IGIBackup);
			bPaused = false;
			FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write original IGI = 0x%x\n", pDM_DigTable->IGIBackup));

			/* 2 Enable DIG */
			FUNC0(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility | ODM_BB_DIG);
			FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Resume DIG !!\n"));
		}
		break;

	default:
		FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Wrong  type !!\n"));
		break;
	}
}