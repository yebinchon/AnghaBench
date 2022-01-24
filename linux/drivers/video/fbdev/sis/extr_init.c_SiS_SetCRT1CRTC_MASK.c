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
struct SiS_Private {unsigned char* CCRT1CRTC; scalar_t__ SiS_ModeType; scalar_t__ ChipType; int /*<<< orphan*/  SiS_P3c4; int /*<<< orphan*/  SiS_P3d4; TYPE_1__* SiS_CRT1Table; scalar_t__ Alternate1600x1200; int /*<<< orphan*/  SiS_UseWide; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {int /*<<< orphan*/ * CR; } ;

/* Variables and functions */
 unsigned short DoubleScanMode ; 
 scalar_t__ ModeVGA ; 
 unsigned short FUNC0 (struct SiS_Private*,unsigned short,unsigned short) ; 
 unsigned short FUNC1 (struct SiS_Private*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,unsigned short) ; 
 scalar_t__ XGI_20 ; 

__attribute__((used)) static void
FUNC5(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
		unsigned short ModeIdIndex, unsigned short RRTI)
{
   unsigned short temp, i, j, modeflag;
   unsigned char  *crt1data = NULL;

   modeflag = FUNC0(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->UseCustomMode) {

      crt1data = &SiS_Pr->CCRT1CRTC[0];

   } else {

      temp = FUNC1(SiS_Pr, RRTI, SiS_Pr->SiS_UseWide);

      /* Alternate for 1600x1200 LCDA */
      if((temp == 0x20) && (SiS_Pr->Alternate1600x1200)) temp = 0x57;

      crt1data = (unsigned char *)&SiS_Pr->SiS_CRT1Table[temp].CR[0];

   }

   /* unlock cr0-7 */
   FUNC3(SiS_Pr->SiS_P3d4,0x11,0x7f);

   for(i = 0, j = 0; i <= 7; i++, j++) {
      FUNC2(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x10; i <= 10; i++, j++) {
      FUNC2(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x15; i <= 12; i++, j++) {
      FUNC2(SiS_Pr->SiS_P3d4,j,crt1data[i]);
   }
   for(j = 0x0A; i <= 15; i++, j++) {
      FUNC2(SiS_Pr->SiS_P3c4,j,crt1data[i]);
   }

   FUNC2(SiS_Pr->SiS_P3c4,0x0E,crt1data[16] & 0xE0);

   temp = (crt1data[16] & 0x01) << 5;
   if(modeflag & DoubleScanMode) temp |= 0x80;
   FUNC4(SiS_Pr->SiS_P3d4,0x09,0x5F,temp);

   if(SiS_Pr->SiS_ModeType > ModeVGA) {
      FUNC2(SiS_Pr->SiS_P3d4,0x14,0x4F);
   }

#ifdef CONFIG_FB_SIS_315
   if(SiS_Pr->ChipType == XGI_20) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,0x04,crt1data[4] - 1);
      if(!(temp = crt1data[5] & 0x1f)) {
         SiS_SetRegAND(SiS_Pr->SiS_P3c4,0x0c,0xfb);
      }
      SiS_SetRegANDOR(SiS_Pr->SiS_P3d4,0x05,0xe0,((temp - 1) & 0x1f));
      temp = (crt1data[16] >> 5) + 3;
      if(temp > 7) temp -= 7;
      SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x0e,0x1f,(temp << 5));
   }
#endif
}