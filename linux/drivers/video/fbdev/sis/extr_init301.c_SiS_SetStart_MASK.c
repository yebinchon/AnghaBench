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
struct SiS_Private {int SiS_DDC_Data; int /*<<< orphan*/  SiS_DDC_NData; int /*<<< orphan*/  SiS_DDC_Index; int /*<<< orphan*/  SiS_DDC_Port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct SiS_Private*) ; 
 scalar_t__ FUNC2 (struct SiS_Private*) ; 

__attribute__((used)) static unsigned short
FUNC3(struct SiS_Private *SiS_Pr)
{
  if(FUNC2(SiS_Pr)) return 0xFFFF;			/* (SC->low)  */
  FUNC0(SiS_Pr->SiS_DDC_Port,
		  SiS_Pr->SiS_DDC_Index,
		  SiS_Pr->SiS_DDC_NData,
		  SiS_Pr->SiS_DDC_Data);        		/* SD->high */
  if(FUNC1(SiS_Pr)) return 0xFFFF;			/* SC->high */
  FUNC0(SiS_Pr->SiS_DDC_Port,
		  SiS_Pr->SiS_DDC_Index,
		  SiS_Pr->SiS_DDC_NData,
		  0x00);					/* SD->low = start condition */
  if(FUNC1(SiS_Pr)) return 0xFFFF;			/* (SC->low) */
  return 0;
}