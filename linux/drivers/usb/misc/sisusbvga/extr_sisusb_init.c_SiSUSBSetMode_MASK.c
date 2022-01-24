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
struct SiS_Private {unsigned long IOAddress; int SiS_ModeType; int /*<<< orphan*/  SiS_P3d4; int /*<<< orphan*/  SiS_P3c6; int /*<<< orphan*/  SiS_SetFlag; TYPE_1__* SiS_EModeIDTable; int /*<<< orphan*/  SiS_P3c4; } ;
struct TYPE_2__ {int Ext_ModeFlag; } ;

/* Variables and functions */
 int /*<<< orphan*/  LowModeTests ; 
 int ModeTypeMask ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC4 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC5 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC6 (struct SiS_Private*,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC7 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct SiS_Private*,int /*<<< orphan*/ ,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (struct SiS_Private*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
	unsigned short ModeIdIndex;
	unsigned long BaseAddr = SiS_Pr->IOAddress;

	FUNC2(SiS_Pr);
	FUNC1(SiS_Pr, BaseAddr);
	FUNC4(SiS_Pr);

	if (!(FUNC6(SiS_Pr, &ModeNo, &ModeIdIndex)))
		return 0;

	FUNC8(SiS_Pr, SiS_Pr->SiS_P3c4, 0x05, 0x86);

	FUNC0(SiS_Pr);

	ModeNo &= 0x7f;

	SiS_Pr->SiS_ModeType =
	    SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;

	SiS_Pr->SiS_SetFlag = LowModeTests;

	/* Set mode on CRT1 */
	FUNC7(SiS_Pr, ModeNo, ModeIdIndex);

	FUNC5(SiS_Pr);

	FUNC3(SiS_Pr);
	FUNC9(SiS_Pr, SiS_Pr->SiS_P3c6, 0xFF);

	/* Store mode number */
	FUNC8(SiS_Pr, SiS_Pr->SiS_P3d4, 0x34, ModeNo);

	return 1;
}