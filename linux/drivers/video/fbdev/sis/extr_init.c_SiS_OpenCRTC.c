
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3d4; int SiS_ROMNew; } ;


 scalar_t__ IS_SIS650 ;
 scalar_t__ IS_SIS651 ;
 scalar_t__ IS_SIS661741660760 ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;

__attribute__((used)) static void
SiS_OpenCRTC(struct SiS_Private *SiS_Pr)
{
   if(IS_SIS650) {
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x51,0x1f);
      if(IS_SIS651) SiS_SetRegOR(SiS_Pr->SiS_P3d4,0x51,0x20);
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x56,0xe7);
   } else if(IS_SIS661741660760) {
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x61,0xf7);
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x51,0x1f);
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x56,0xe7);
      if(!SiS_Pr->SiS_ROMNew) {
  SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x3a,0xef);
      }
   }
}
