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
typedef  int u32 ;
struct hal_data_8188e {struct bb_reg_def* PHYRegDef; } ;
struct bb_reg_def {int /*<<< orphan*/  rfintfs; int /*<<< orphan*/  rfHSSIPara2; int /*<<< orphan*/  rfintfo; int /*<<< orphan*/  rfintfe; } ;
struct adapter {struct hal_data_8188e* HalData; } ;

/* Variables and functions */
 int B3WIREADDREAALENGTH ; 
 int B3WIREDATALENGTH ; 
 int BRFSI_RFENV ; 
 size_t RF90_PATH_A ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(struct adapter *adapt)
{
	struct hal_data_8188e *hal_data = adapt->HalData;
	u32 u4val = 0;
	bool rtstatus;
	struct bb_reg_def *pphyreg;

	pphyreg = &hal_data->PHYRegDef[RF90_PATH_A];
	u4val = FUNC0(adapt, pphyreg->rfintfs, BRFSI_RFENV);

	FUNC1(adapt, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
	FUNC3(1);

	FUNC1(adapt, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
	FUNC3(1);

	FUNC1(adapt, pphyreg->rfHSSIPara2, B3WIREADDREAALENGTH, 0x0);
	FUNC3(1);

	FUNC1(adapt, pphyreg->rfHSSIPara2, B3WIREDATALENGTH, 0x0);
	FUNC3(1);

	rtstatus = FUNC2(adapt);

	FUNC1(adapt, pphyreg->rfintfs, BRFSI_RFENV, u4val);

	return rtstatus;
}