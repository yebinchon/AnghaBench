
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_SetReg (struct SiS_Private*,int ,int,int) ;
 int SiS_SetRegAND (struct SiS_Private*,int ,int,int) ;

__attribute__((used)) static void SiS_ClearExt1Regs(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
 int i;

 for (i = 0x0A; i <= 0x0E; i++) {
  SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, i, 0x00);
 }

 SiS_SetRegAND(SiS_Pr, SiS_Pr->SiS_P3c4, 0x37, 0xFE);
}
