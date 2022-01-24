#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bDualMacSmartConcurrent; int /*<<< orphan*/  bWIFITest; int /*<<< orphan*/  bInHctTest; int /*<<< orphan*/  PatchID; int /*<<< orphan*/  ExtTRSW; int /*<<< orphan*/  ExtPA; int /*<<< orphan*/  ExtLNA; int /*<<< orphan*/  BoardType; int /*<<< orphan*/  RFType; int /*<<< orphan*/  FabVersion; int /*<<< orphan*/  CutVersion; int /*<<< orphan*/  SupportICType; int /*<<< orphan*/  SupportInterface; int /*<<< orphan*/  SupportAbility; int /*<<< orphan*/  SupportPlatform; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  ODM_COMP_COMMON ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC1(PDM_ODM_T pDM_Odm)
{
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportAbility = 0x%x\n", pDM_Odm->SupportAbility));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportInterface =%d\n", pDM_Odm->SupportInterface));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportICType = 0x%x\n", pDM_Odm->SupportICType));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("CutVersion =%d\n", pDM_Odm->CutVersion));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("FabVersion =%d\n", pDM_Odm->FabVersion));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RFType =%d\n", pDM_Odm->RFType));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("BoardType =%d\n", pDM_Odm->BoardType));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtLNA =%d\n", pDM_Odm->ExtLNA));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtPA =%d\n", pDM_Odm->ExtPA));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("ExtTRSW =%d\n", pDM_Odm->ExtTRSW));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("PatchID =%d\n", pDM_Odm->PatchID));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bInHctTest =%d\n", pDM_Odm->bInHctTest));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bWIFITest =%d\n", pDM_Odm->bWIFITest));
	FUNC0(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bDualMacSmartConcurrent =%d\n", pDM_Odm->bDualMacSmartConcurrent));

}