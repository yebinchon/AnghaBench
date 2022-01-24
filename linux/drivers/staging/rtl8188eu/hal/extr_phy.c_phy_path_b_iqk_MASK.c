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
typedef  int u8 ;
typedef  int u32 ;
struct odm_dm_struct {int dummy; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IQK_DELAY_TIME_88E ; 
 int /*<<< orphan*/  ODM_COMP_CALIBRATION ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC1 (struct odm_dm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rIQK_AGC_Cont ; 
 int /*<<< orphan*/  rRx_Power_After_IQK_A_2 ; 
 int /*<<< orphan*/  rRx_Power_After_IQK_B_2 ; 
 int /*<<< orphan*/  rRx_Power_Before_IQK_B_2 ; 
 int /*<<< orphan*/  rTx_Power_After_IQK_B ; 
 int /*<<< orphan*/  rTx_Power_Before_IQK_B ; 

__attribute__((used)) static u8 FUNC5(struct adapter *adapt)
{
	u32 regeac, regeb4, regebc, regec4, regecc;
	u8 result = 0x00;
	struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;

	/* One shot, path B LOK & IQK */
	FUNC4(adapt, rIQK_AGC_Cont, bMaskDWord, 0x00000002);
	FUNC4(adapt, rIQK_AGC_Cont, bMaskDWord, 0x00000000);

	FUNC2(IQK_DELAY_TIME_88E);

	regeac = FUNC3(adapt, rRx_Power_After_IQK_A_2, bMaskDWord);
	regeb4 = FUNC3(adapt, rTx_Power_Before_IQK_B, bMaskDWord);
	regebc = FUNC3(adapt, rTx_Power_After_IQK_B, bMaskDWord);
	regec4 = FUNC3(adapt, rRx_Power_Before_IQK_B_2, bMaskDWord);
	regecc = FUNC3(adapt, rRx_Power_After_IQK_B_2, bMaskDWord);

	if (!(regeac & FUNC0(31)) &&
	    (((regeb4 & 0x03FF0000)>>16) != 0x142) &&
	    (((regebc & 0x03FF0000)>>16) != 0x42))
		result |= 0x01;
	else
		return result;

	if (!(regeac & FUNC0(30)) &&
	    (((regec4 & 0x03FF0000)>>16) != 0x132) &&
	    (((regecc & 0x03FF0000)>>16) != 0x36))
		result |= 0x02;
	else
		FUNC1(dm_odm, ODM_COMP_CALIBRATION,
			     ODM_DBG_LOUD,  ("Path B Rx IQK fail!!\n"));
	return result;
}