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
struct SiS_Private {scalar_t__ ChipType; int /*<<< orphan*/  SiS_P3c4; } ;

/* Variables and functions */
 scalar_t__ SIS_661 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned short,unsigned short) ; 

__attribute__((used)) static void
FUNC1(struct SiS_Private *SiS_Pr, unsigned short DataAND, unsigned short DataOR)
{
   if(SiS_Pr->ChipType >= SIS_661) {
      DataAND &= 0x0f;
      DataOR  &= 0x0f;
   }
   FUNC0(SiS_Pr->SiS_P3c4,0x11,DataAND,DataOR);
}