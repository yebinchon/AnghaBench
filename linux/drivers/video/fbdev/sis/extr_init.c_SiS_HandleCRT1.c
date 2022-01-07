
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_MyCR63; int SiS_P3d4; int SiS_P3c4; } ;


 int SiS_GetReg (int ,int) ;
 int SiS_SetRegAND (int ,int ,int) ;
 int SiS_SetRegOR (int ,int ,int) ;

__attribute__((used)) static void
SiS_HandleCRT1(struct SiS_Private *SiS_Pr)
{

   SiS_SetRegAND(SiS_Pr->SiS_P3d4,SiS_Pr->SiS_MyCR63,0xbf);
}
