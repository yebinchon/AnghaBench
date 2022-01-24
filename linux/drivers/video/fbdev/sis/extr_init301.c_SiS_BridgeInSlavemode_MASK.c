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
struct SiS_Private {int /*<<< orphan*/  SiS_P3d4; } ;

/* Variables and functions */
 int SetInSlaveMode ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC1(struct SiS_Private *SiS_Pr)
{
   unsigned short flag1;

   flag1 = FUNC0(SiS_Pr->SiS_P3d4,0x31);
   if(flag1 & (SetInSlaveMode >> 8)) return true;
   return false;
}