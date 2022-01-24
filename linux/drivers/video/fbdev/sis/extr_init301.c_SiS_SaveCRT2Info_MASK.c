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
struct SiS_Private {int SiS_VBInfo; int /*<<< orphan*/  SiS_P3d4; } ;

/* Variables and functions */
 int SetInSlaveMode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned short,unsigned short) ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
   unsigned short temp1, temp2;

   /* Store CRT1 ModeNo in CR34 */
   FUNC0(SiS_Pr->SiS_P3d4,0x34,ModeNo);
   temp1 = (SiS_Pr->SiS_VBInfo & SetInSlaveMode) >> 8;
   temp2 = ~(SetInSlaveMode >> 8);
   FUNC1(SiS_Pr->SiS_P3d4,0x31,temp2,temp1);
}