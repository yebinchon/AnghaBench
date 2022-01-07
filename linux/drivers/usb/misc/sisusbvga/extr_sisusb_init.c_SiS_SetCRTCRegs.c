
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_P3d4; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char* CRTC; } ;


 int SiS_SetReg (struct SiS_Private*,int ,unsigned short,unsigned char) ;
 int SiS_SetRegAND (struct SiS_Private*,int ,int,int) ;

__attribute__((used)) static void
SiS_SetCRTCRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
 unsigned char CRTCdata;
 unsigned short i;

 SiS_SetRegAND(SiS_Pr, SiS_Pr->SiS_P3d4, 0x11, 0x7f);

 for (i = 0; i <= 0x18; i++) {
  CRTCdata = SiS_Pr->SiS_StandTable[StandTableIndex].CRTC[i];
  SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3d4, i, CRTCdata);
 }
}
