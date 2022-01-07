
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_SetFlag; } ;


 int LowModeTests ;
 scalar_t__ SiS_DoLowModeTest (struct SiS_Private*,unsigned short) ;

__attribute__((used)) static void
SiS_SetLowModeTest(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
   if(SiS_DoLowModeTest(SiS_Pr, ModeNo)) {
      SiS_Pr->SiS_SetFlag |= LowModeTests;
   }
}
