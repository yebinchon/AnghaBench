
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_P3da; int SiS_P3c0; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char* ATTR; } ;


 int SiS_GetRegByte (struct SiS_Private*,int ) ;
 int SiS_SetRegByte (struct SiS_Private*,int ,int) ;

__attribute__((used)) static void
SiS_SetATTRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
 unsigned char ARdata;
 unsigned short i;

 for (i = 0; i <= 0x13; i++) {
  ARdata = SiS_Pr->SiS_StandTable[StandTableIndex].ATTR[i];
  SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3da);
  SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c0, i);
  SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c0, ARdata);
 }
 SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3da);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c0, 0x14);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c0, 0x00);

 SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3da);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c0, 0x20);
 SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3da);
}
