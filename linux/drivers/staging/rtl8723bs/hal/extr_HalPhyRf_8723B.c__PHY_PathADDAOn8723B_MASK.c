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
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/  Adapter; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 size_t IQK_ADDA_REG_NUM ; 
 int /*<<< orphan*/  ODM_COMP_CALIBRATION ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  bMaskDWord ; 

__attribute__((used)) static void FUNC3(
	struct adapter *padapter,
	u32 *ADDAReg,
	bool is2T
)
{
	u32 pathOn;
	u32 i;
	struct hal_com_data *pHalData = FUNC0(padapter);
	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

	FUNC1(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));

	pathOn = 0x01c00014;
	if (!is2T) {
		pathOn = 0x01c00014;
		FUNC2(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, 0x01c00014);
	} else {
		FUNC2(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, pathOn);
	}

	for (i = 1 ; i < IQK_ADDA_REG_NUM ; i++) {
		FUNC2(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord, pathOn);
	}

}