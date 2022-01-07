
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int ChipType; int SiS_P3c4; } ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;



__attribute__((used)) static void
SiSInitPCIetc(struct SiS_Private *SiS_Pr)
{
   switch(SiS_Pr->ChipType) {
   default:
      break;
   }
}
