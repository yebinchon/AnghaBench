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
 int /*<<< orphan*/  ODM_COMP_CALIBRATION ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bMaskDWord ; 

__attribute__((used)) static void FUNC4(
	struct adapter *padapter,
	u32 *ADDAReg,
	u32 *ADDABackup,
	u32 RegisterNum
)
{
	u32 i;
	struct hal_com_data *pHalData = FUNC0(padapter);
	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

	if (!FUNC1(padapter))
		return;

	FUNC2(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save ADDA parameters.\n"));
	for (i = 0 ; i < RegisterNum ; i++) {
		ADDABackup[i] = FUNC3(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord);
	}
}