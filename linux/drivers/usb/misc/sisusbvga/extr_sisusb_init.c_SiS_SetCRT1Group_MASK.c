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
struct SiS_Private {unsigned short SiS_CRT1Mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 
 unsigned short FUNC2 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC5 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC12 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC13 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC14 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC15 (struct SiS_Private*,unsigned short) ; 

__attribute__((used)) static void
FUNC16(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
		 unsigned short ModeIdIndex)
{
	unsigned short StandTableIndex, rrti;

	SiS_Pr->SiS_CRT1Mode = ModeNo;

	if (ModeNo <= 0x13)
		StandTableIndex = 0;
	else
		StandTableIndex = 1;

	FUNC4(SiS_Pr);
	FUNC15(SiS_Pr, StandTableIndex);
	FUNC14(SiS_Pr, StandTableIndex);
	FUNC12(SiS_Pr, StandTableIndex);
	FUNC5(SiS_Pr, StandTableIndex);
	FUNC13(SiS_Pr, StandTableIndex);
	FUNC0(SiS_Pr, ModeNo);

	rrti = FUNC2(SiS_Pr, ModeNo, ModeIdIndex);

	if (rrti != 0xFFFF) {
		FUNC10(SiS_Pr, rrti);
		FUNC6(SiS_Pr, ModeNo, ModeIdIndex, rrti);
		FUNC9(SiS_Pr, ModeNo, ModeIdIndex, rrti);
		FUNC11(SiS_Pr, ModeNo, rrti);
	}

	FUNC7(SiS_Pr, ModeNo, ModeIdIndex);

	FUNC8(SiS_Pr, ModeNo, ModeIdIndex, rrti);

	FUNC3(SiS_Pr, ModeNo, ModeIdIndex);

	FUNC1(SiS_Pr);
}