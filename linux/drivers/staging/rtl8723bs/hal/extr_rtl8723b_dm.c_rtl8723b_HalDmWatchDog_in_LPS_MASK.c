#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sta_priv {int dummy; } ;
struct TYPE_5__ {scalar_t__ UndecoratedSmoothedPWDB; } ;
struct sta_info {TYPE_1__ rssi_stat; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_6__ {int CurIGValue; } ;
struct TYPE_7__ {int SupportAbility; scalar_t__ RSSI_Min; TYPE_2__ DM_DigTable; } ;
struct dm_priv {scalar_t__ EntryMinUndecoratedSmoothedPWDB; scalar_t__ MinUndecoratedPWDBForDM; } ;
struct hal_com_data {TYPE_3__ odmpriv; struct dm_priv dmpriv; } ;
struct adapter {int hw_init_completed; struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;
typedef  TYPE_2__* pDIG_T ;
typedef  TYPE_3__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 
 int ODM_BB_RSSI_MONITOR ; 
 int /*<<< orphan*/  ODM_CMNINFO_LINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 struct sta_info* FUNC5 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct adapter*) ; 

void FUNC7(struct adapter *Adapter)
{
	u8 bLinked = false;
	struct hal_com_data *pHalData = FUNC1(Adapter);
	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
	struct dm_priv *pdmpriv = &pHalData->dmpriv;
	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
	struct sta_priv *pstapriv = &Adapter->stapriv;
	struct sta_info *psta = NULL;

	if (Adapter->hw_init_completed == false)
		goto skip_lps_dm;


	if (FUNC6(Adapter))
		bLinked = true;

	FUNC2(&pHalData->odmpriv, ODM_CMNINFO_LINK, bLinked);

	if (bLinked == false)
		goto skip_lps_dm;

	if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
		goto skip_lps_dm;


	/* ODM_DMWatchdog(&pHalData->odmpriv); */
	/* Do DIG by RSSI In LPS-32K */

      /* 1 Find MIN-RSSI */
	psta = FUNC5(pstapriv, FUNC3(pmlmepriv));
	if (!psta)
		goto skip_lps_dm;

	pdmpriv->EntryMinUndecoratedSmoothedPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;

	FUNC0("CurIGValue =%d, EntryMinUndecoratedSmoothedPWDB = %d\n", pDM_DigTable->CurIGValue, pdmpriv->EntryMinUndecoratedSmoothedPWDB);

	if (pdmpriv->EntryMinUndecoratedSmoothedPWDB <= 0)
		goto skip_lps_dm;

	pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;

	pDM_Odm->RSSI_Min = pdmpriv->MinUndecoratedPWDBForDM;

	/* if (pDM_DigTable->CurIGValue != pDM_Odm->RSSI_Min) */
	if (
		(pDM_DigTable->CurIGValue > pDM_Odm->RSSI_Min + 5) ||
		(pDM_DigTable->CurIGValue < pDM_Odm->RSSI_Min - 5)
	)
		FUNC4(Adapter);


skip_lps_dm:

	return;

}