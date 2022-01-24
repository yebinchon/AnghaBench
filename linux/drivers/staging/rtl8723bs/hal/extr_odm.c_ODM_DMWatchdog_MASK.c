#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_16__ ;

/* Type definitions */
typedef  TYPE_2__* pDIG_T ;
struct TYPE_22__ {scalar_t__ NumQryBeaconPkt; } ;
struct TYPE_23__ {int /*<<< orphan*/  CurIGValue; } ;
struct TYPE_24__ {int* pbPowerSaving; TYPE_1__ PhyDbgInfo; TYPE_2__ DM_DigTable; int /*<<< orphan*/  Adapter; int /*<<< orphan*/  RSSI_Min; } ;
struct TYPE_21__ {scalar_t__ pwr_mode; } ;
typedef  TYPE_3__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  ODM_COMP_DIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 TYPE_16__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

void FUNC16(PDM_ODM_T pDM_Odm)
{
	FUNC7(pDM_Odm);
	FUNC5(pDM_Odm);
	FUNC11(pDM_Odm);
	FUNC12(pDM_Odm);
	FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): RSSI = 0x%x\n", pDM_Odm->RSSI_Min));

	FUNC14(pDM_Odm);

	/* For CE Platform(SPRD or Tablet) */
	/* 8723A or 8189ES platform */
	/* NeilChen--2012--08--24-- */
	/* Fix Leave LPS issue */
	if ((FUNC3(pDM_Odm->Adapter)->pwr_mode != PS_MODE_ACTIVE) /*  in LPS mode */
		/*  */
		/* (pDM_Odm->SupportICType & (ODM_RTL8723A))|| */
		/* (pDM_Odm->SupportICType & (ODM_RTL8188E) &&(&&(((pDM_Odm->SupportInterface  == ODM_ITRF_SDIO))) */
		/*  */
	) {
			FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("----Step1: odm_DIG is in LPS mode\n"));
			FUNC1(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("---Step2: 8723AS is in LPS mode\n"));
			FUNC9(pDM_Odm);
	} else
		FUNC8(pDM_Odm);

	{
		pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;

		FUNC4(pDM_Odm, pDM_DigTable->CurIGValue);
	}
	FUNC6(pDM_Odm);

	if (*(pDM_Odm->pbPowerSaving) == true)
		return;


	FUNC15(pDM_Odm);
	FUNC10(pDM_Odm);
	FUNC13(pDM_Odm);
	FUNC0(pDM_Odm);

	FUNC2(pDM_Odm);

	/* odm_EdcaTurboCheck(pDM_Odm); */

	/* 2010.05.30 LukeLee: For CE platform, files in IC subfolders may not be included to be compiled, */
	/*  so compile flags must be left here to prevent from compile errors */
	pDM_Odm->PhyDbgInfo.NumQryBeaconPkt = 0;
}