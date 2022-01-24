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
struct SiS_Private {unsigned short CSR2B; unsigned short CSR2C; int SiS_VBType; int SiS_TVMode; int SiS_VBInfo; int /*<<< orphan*/  SiS_Part4Port; TYPE_1__* SiS_VBVCLKData; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {unsigned short Part4_A; unsigned short Part4_B; } ;

/* Variables and functions */
 int SetCRT2ToRAMDAC ; 
 unsigned short FUNC0 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned short) ; 
 int TVSet525p1024 ; 
 int TVSetNTSC1024 ; 
 int VB_SIS30xBLV ; 

__attribute__((used)) static void
FUNC3(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
                 unsigned short RefreshRateTableIndex)
{
  unsigned short vclkindex, temp, reg1, reg2;

  if(SiS_Pr->UseCustomMode) {
     reg1 = SiS_Pr->CSR2B;
     reg2 = SiS_Pr->CSR2C;
  } else {
     vclkindex = FUNC0(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
     reg1 = SiS_Pr->SiS_VBVCLKData[vclkindex].Part4_A;
     reg2 = SiS_Pr->SiS_VBVCLKData[vclkindex].Part4_B;
  }

  if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
     if(SiS_Pr->SiS_TVMode & (TVSetNTSC1024 | TVSet525p1024)) {
        FUNC1(SiS_Pr->SiS_Part4Port,0x0a,0x57);
 	FUNC1(SiS_Pr->SiS_Part4Port,0x0b,0x46);
	FUNC1(SiS_Pr->SiS_Part4Port,0x1f,0xf6);
     } else {
        FUNC1(SiS_Pr->SiS_Part4Port,0x0a,reg1);
        FUNC1(SiS_Pr->SiS_Part4Port,0x0b,reg2);
     }
  } else {
     FUNC1(SiS_Pr->SiS_Part4Port,0x0a,0x01);
     FUNC1(SiS_Pr->SiS_Part4Port,0x0b,reg2);
     FUNC1(SiS_Pr->SiS_Part4Port,0x0a,reg1);
  }
  FUNC1(SiS_Pr->SiS_Part4Port,0x12,0x00);
  temp = 0x08;
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) temp |= 0x20;
  FUNC2(SiS_Pr->SiS_Part4Port,0x12,temp);
}