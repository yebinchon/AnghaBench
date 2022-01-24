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
struct dm_priv {int /*<<< orphan*/  DMFlag; int /*<<< orphan*/  InitDMFlag; int /*<<< orphan*/  DM_Type; } ;
struct hal_com_data {int /*<<< orphan*/  odmpriv; struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/ * PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  DM_Type_ByDriver ; 
 int /*<<< orphan*/  DYNAMIC_FUNC_BT ; 
 int /*<<< orphan*/  DYNAMIC_FUNC_DISABLE ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

void FUNC3(struct adapter *Adapter)
{
	struct hal_com_data *pHalData = FUNC0(Adapter);
	struct dm_priv *pdmpriv = &pHalData->dmpriv;
	PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);

	pdmpriv->DM_Type = DM_Type_ByDriver;
	pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;

	pdmpriv->DMFlag |= DYNAMIC_FUNC_BT;

	pdmpriv->InitDMFlag = pdmpriv->DMFlag;

	FUNC2(Adapter);

	FUNC1(pDM_Odm);
}