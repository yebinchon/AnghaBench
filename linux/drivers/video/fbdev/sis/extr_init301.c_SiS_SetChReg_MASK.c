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
struct SiS_Private {unsigned char SiS_DDC_DeviceAddr; int SiS_ChrontelInit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int) ; 
 int SiS_I2CDELAYSHORT ; 
 scalar_t__ FUNC1 (struct SiS_Private*) ; 
 scalar_t__ FUNC2 (struct SiS_Private*) ; 
 unsigned short FUNC3 (struct SiS_Private*,unsigned char) ; 

__attribute__((used)) static bool
FUNC4(struct SiS_Private *SiS_Pr, unsigned short reg, unsigned char val, unsigned short myor)
{
  unsigned short temp, i;

  for(i=0; i<20; i++) {				/* Do 20 attempts to write */
     if(i) {
	FUNC2(SiS_Pr);
	FUNC0(SiS_Pr,SiS_I2CDELAYSHORT * 4);
     }
     if(FUNC1(SiS_Pr)) continue;					/* Set start condition */
     temp = FUNC3(SiS_Pr, SiS_Pr->SiS_DDC_DeviceAddr);	/* Write DAB (S0=0=write) */
     if(temp) continue;							/*    (ERROR: no ack) */
     temp = FUNC3(SiS_Pr, (reg | myor));			/* Write RAB (700x: set bit 7, see datasheet) */
     if(temp) continue;							/*    (ERROR: no ack) */
     temp = FUNC3(SiS_Pr, val);				/* Write data */
     if(temp) continue;							/*    (ERROR: no ack) */
     if(FUNC2(SiS_Pr)) continue;					/* Set stop condition */
     SiS_Pr->SiS_ChrontelInit = 1;
     return true;
  }
  return false;
}