
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_SensibleSR11; int SiS_MyCR63; scalar_t__ ChipType; int SiS_SysFlags; int SiS_P3d4; } ;


 int SF_760LFB ;
 int SF_760UMA ;
 int SF_Is651 ;
 int SF_Is652 ;
 int SF_IsM650 ;
 int SF_IsM652 ;
 int SF_IsM653 ;
 scalar_t__ SIS_330 ;
 scalar_t__ SIS_650 ;
 scalar_t__ SIS_661 ;
 scalar_t__ SIS_760 ;
 scalar_t__ SIS_761 ;
 int SiS_GetReg (int ,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;

__attribute__((used)) static void
SiS_GetSysFlags(struct SiS_Private *SiS_Pr)
{
   unsigned char cr5f, temp1, temp2;



   SiS_Pr->SiS_SensibleSR11 = 0;
   SiS_Pr->SiS_MyCR63 = 0x63;
   if(SiS_Pr->ChipType >= SIS_330) {
      SiS_Pr->SiS_MyCR63 = 0x53;
      if(SiS_Pr->ChipType >= SIS_661) {
         SiS_Pr->SiS_SensibleSR11 = 1;
      }
   }



   SiS_Pr->SiS_SysFlags = 0;
   if(SiS_Pr->ChipType == SIS_650) {
      cr5f = SiS_GetReg(SiS_Pr->SiS_P3d4,0x5f) & 0xf0;
      SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x5c,0x07);
      temp1 = SiS_GetReg(SiS_Pr->SiS_P3d4,0x5c) & 0xf8;
      SiS_SetRegOR(SiS_Pr->SiS_P3d4,0x5c,0xf8);
      temp2 = SiS_GetReg(SiS_Pr->SiS_P3d4,0x5c) & 0xf8;
      if((!temp1) || (temp2)) {
  switch(cr5f) {
     case 0x80:
     case 0x90:
     case 0xc0:
        SiS_Pr->SiS_SysFlags |= SF_IsM650;
        break;
     case 0xa0:
     case 0xb0:
     case 0xe0:
        SiS_Pr->SiS_SysFlags |= SF_Is651;
        break;
  }
      } else {
  switch(cr5f) {
     case 0x90:
        temp1 = SiS_GetReg(SiS_Pr->SiS_P3d4,0x5c) & 0xf8;
        switch(temp1) {
    case 0x00: SiS_Pr->SiS_SysFlags |= SF_IsM652; break;
    case 0x40: SiS_Pr->SiS_SysFlags |= SF_IsM653; break;
    default: SiS_Pr->SiS_SysFlags |= SF_IsM650; break;
        }
        break;
     case 0xb0:
        SiS_Pr->SiS_SysFlags |= SF_Is652;
        break;
     default:
        SiS_Pr->SiS_SysFlags |= SF_IsM650;
        break;
  }
      }
   }

   if(SiS_Pr->ChipType >= SIS_760 && SiS_Pr->ChipType <= SIS_761) {
      if(SiS_GetReg(SiS_Pr->SiS_P3d4,0x78) & 0x30) {
         SiS_Pr->SiS_SysFlags |= SF_760LFB;
      }
      if(SiS_GetReg(SiS_Pr->SiS_P3d4,0x79) & 0xf0) {
         SiS_Pr->SiS_SysFlags |= SF_760UMA;
      }
   }
}
