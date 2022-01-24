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
struct SiS_Private {int /*<<< orphan*/  SiS_P3c4; TYPE_1__* SiS_EModeIDTable; } ;
struct TYPE_2__ {unsigned short Ext_ModeFlag; } ;

/* Variables and functions */
 unsigned short DoubleScanMode ; 
 unsigned short HalfDCLK ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
		    unsigned short mi)
{
	unsigned short modeflag = SiS_Pr->SiS_EModeIDTable[mi].Ext_ModeFlag;

	/* disable auto-threshold */
	FUNC1(SiS_Pr, SiS_Pr->SiS_P3c4, 0x3D, 0xFE);

	FUNC0(SiS_Pr, SiS_Pr->SiS_P3c4, 0x08, 0xAE);
	FUNC1(SiS_Pr, SiS_Pr->SiS_P3c4, 0x09, 0xF0);

	if (ModeNo <= 0x13)
		return;

	if ((!(modeflag & DoubleScanMode)) || (!(modeflag & HalfDCLK))) {
		FUNC0(SiS_Pr, SiS_Pr->SiS_P3c4, 0x08, 0x34);
		FUNC2(SiS_Pr, SiS_Pr->SiS_P3c4, 0x3D, 0x01);
	}
}