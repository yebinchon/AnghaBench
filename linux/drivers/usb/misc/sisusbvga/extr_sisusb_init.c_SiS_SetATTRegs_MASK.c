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
struct SiS_Private {int /*<<< orphan*/  SiS_P3da; int /*<<< orphan*/  SiS_P3c0; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char* ATTR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
	unsigned char ARdata;
	unsigned short i;

	for (i = 0; i <= 0x13; i++) {
		ARdata = SiS_Pr->SiS_StandTable[StandTableIndex].ATTR[i];
		FUNC0(SiS_Pr, SiS_Pr->SiS_P3da);
		FUNC1(SiS_Pr, SiS_Pr->SiS_P3c0, i);
		FUNC1(SiS_Pr, SiS_Pr->SiS_P3c0, ARdata);
	}
	FUNC0(SiS_Pr, SiS_Pr->SiS_P3da);
	FUNC1(SiS_Pr, SiS_Pr->SiS_P3c0, 0x14);
	FUNC1(SiS_Pr, SiS_Pr->SiS_P3c0, 0x00);

	FUNC0(SiS_Pr, SiS_Pr->SiS_P3da);
	FUNC1(SiS_Pr, SiS_Pr->SiS_P3c0, 0x20);
	FUNC0(SiS_Pr, SiS_Pr->SiS_P3da);
}