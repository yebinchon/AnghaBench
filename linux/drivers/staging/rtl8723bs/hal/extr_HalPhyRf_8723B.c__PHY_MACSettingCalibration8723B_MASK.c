#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/  Adapter; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 size_t BIT3 ; 
 size_t BIT5 ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int IQK_MAC_REG_NUM ; 
 int /*<<< orphan*/  ODM_COMP_CALIBRATION ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void FUNC3(
	struct adapter *padapter, u32 *MACReg, u32 *MACBackup
)
{
	u32 i = 0;
	struct hal_com_data	*pHalData = FUNC0(padapter);
	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

	FUNC1(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("MAC settings for Calibration.\n"));

	FUNC2(pDM_Odm->Adapter, MACReg[i], 0x3F);

	for (i = 1 ; i < (IQK_MAC_REG_NUM - 1); i++) {
		FUNC2(pDM_Odm->Adapter, MACReg[i], (u8)(MACBackup[i]&(~BIT3)));
	}
	FUNC2(pDM_Odm->Adapter, MACReg[i], (u8)(MACBackup[i]&(~BIT5)));

}