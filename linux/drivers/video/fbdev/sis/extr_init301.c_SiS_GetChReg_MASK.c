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
struct SiS_Private {int SiS_DDC_DeviceAddr; unsigned short SiS_DDC_ReadAddr; int SiS_ChrontelInit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int) ; 
 int SiS_I2CDELAYSHORT ; 
 unsigned short FUNC1 (struct SiS_Private*) ; 
 scalar_t__ FUNC2 (struct SiS_Private*) ; 
 scalar_t__ FUNC3 (struct SiS_Private*) ; 
 unsigned short FUNC4 (struct SiS_Private*,int) ; 

__attribute__((used)) static unsigned short
FUNC5(struct SiS_Private *SiS_Pr, unsigned short myor)
{
  unsigned short tempah, temp, i;

  for(i=0; i<20; i++) {				/* Do 20 attempts to read */
     if(i) {
	FUNC3(SiS_Pr);
	FUNC0(SiS_Pr,SiS_I2CDELAYSHORT * 4);
     }
     if(FUNC2(SiS_Pr)) continue;					/* Set start condition */
     temp = FUNC4(SiS_Pr,SiS_Pr->SiS_DDC_DeviceAddr);	/* Write DAB (S0=0=write) */
     if(temp) continue;							/*        (ERROR: no ack) */
     temp = FUNC4(SiS_Pr,SiS_Pr->SiS_DDC_ReadAddr | myor);	/* Write RAB (700x: | 0x80) */
     if(temp) continue;							/*        (ERROR: no ack) */
     if (FUNC2(SiS_Pr)) continue;				/* Re-start */
     temp = FUNC4(SiS_Pr,SiS_Pr->SiS_DDC_DeviceAddr | 0x01);/* DAB (S0=1=read) */
     if(temp) continue;							/*        (ERROR: no ack) */
     tempah = FUNC1(SiS_Pr);					/* Read byte */
     if(FUNC3(SiS_Pr)) continue;					/* Stop condition */
     SiS_Pr->SiS_ChrontelInit = 1;
     return tempah;
  }
  return 0xFFFF;
}