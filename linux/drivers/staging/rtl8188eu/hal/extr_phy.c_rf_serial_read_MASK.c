#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct bb_reg_def {int /*<<< orphan*/  rfLSSIReadBack; int /*<<< orphan*/  rfLSSIReadBackPi; int /*<<< orphan*/  rfHSSIPara2; } ;
struct adapter {TYPE_1__* HalData; } ;
typedef  enum rf_radio_path { ____Placeholder_rf_radio_path } rf_radio_path ;
struct TYPE_2__ {struct bb_reg_def* PHYRegDef; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RF_PATH_A ; 
 int RF_PATH_B ; 
 int bLSSIReadAddress ; 
 int /*<<< orphan*/  bLSSIReadBackData ; 
 int bLSSIReadEdge ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rFPGA0_XA_HSSIParameter1 ; 
 int /*<<< orphan*/  rFPGA0_XA_HSSIParameter2 ; 
 int /*<<< orphan*/  rFPGA0_XB_HSSIParameter1 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(struct adapter *adapt,
			enum rf_radio_path rfpath, u32 offset)
{
	u32 ret = 0;
	struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
	u32 tmplong, tmplong2;
	u8 rfpi_enable = 0;

	offset &= 0xff;

	tmplong = FUNC1(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord);
	if (rfpath == RF_PATH_A)
		tmplong2 = tmplong;
	else
		tmplong2 = FUNC1(adapt, phyreg->rfHSSIPara2,
					    bMaskDWord);

	tmplong2 = (tmplong2 & (~bLSSIReadAddress)) |
		   (offset<<23) | bLSSIReadEdge;

	FUNC2(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord,
		       tmplong&(~bLSSIReadEdge));
	FUNC3(10);

	FUNC2(adapt, phyreg->rfHSSIPara2, bMaskDWord, tmplong2);
	FUNC3(100);

	FUNC3(10);

	if (rfpath == RF_PATH_A)
		rfpi_enable = (u8)FUNC1(adapt, rFPGA0_XA_HSSIParameter1, FUNC0(8));
	else if (rfpath == RF_PATH_B)
		rfpi_enable = (u8)FUNC1(adapt, rFPGA0_XB_HSSIParameter1, FUNC0(8));

	if (rfpi_enable)
		ret = FUNC1(adapt, phyreg->rfLSSIReadBackPi,
				       bLSSIReadBackData);
	else
		ret = FUNC1(adapt, phyreg->rfLSSIReadBack,
				       bLSSIReadBackData);
	return ret;
}