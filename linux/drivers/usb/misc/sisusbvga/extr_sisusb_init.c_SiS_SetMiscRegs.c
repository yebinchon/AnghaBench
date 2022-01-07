
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_P3c2; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char MISC; } ;


 int SiS_SetRegByte (struct SiS_Private*,int ,unsigned char) ;

__attribute__((used)) static void
SiS_SetMiscRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
 unsigned char Miscdata = SiS_Pr->SiS_StandTable[StandTableIndex].MISC;

 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c2, Miscdata);
}
