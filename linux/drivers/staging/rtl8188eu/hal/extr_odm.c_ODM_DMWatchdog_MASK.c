#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct odm_dm_struct {scalar_t__ AntDivType; scalar_t__* pbPowerSaving; } ;

/* Variables and functions */
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_SMART_ANTDIV ; 
 int /*<<< orphan*/  FUNC0 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct odm_dm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct odm_dm_struct*) ; 

void FUNC11(struct odm_dm_struct *pDM_Odm)
{
	/* 2012.05.03 Luke: For all IC series */
	FUNC2(pDM_Odm);
	FUNC3(pDM_Odm);
	FUNC4(pDM_Odm);
	FUNC7(pDM_Odm);
	FUNC9(pDM_Odm);

	/* Fix Leave LPS issue */
	FUNC5(pDM_Odm);
	FUNC1(pDM_Odm);

	if (*(pDM_Odm->pbPowerSaving))
		return;

	FUNC10(pDM_Odm);

	if ((pDM_Odm->AntDivType ==  CG_TRX_HW_ANTDIV)	||
	    (pDM_Odm->AntDivType == CGCS_RX_HW_ANTDIV)	||
	    (pDM_Odm->AntDivType == CG_TRX_SMART_ANTDIV))
		FUNC8(pDM_Odm);

	FUNC0(pDM_Odm);
	FUNC6(pDM_Odm);
}