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
struct SiS_Private {int SiS_VBInfo; } ;

/* Variables and functions */
 int SetCRT2ToTV ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
      FUNC0(SiS_Pr);
   } else {
      FUNC1(SiS_Pr);
   }
}