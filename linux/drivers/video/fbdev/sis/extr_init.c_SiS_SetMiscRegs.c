
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {scalar_t__ ChipType; int SiS_VBType; int SiS_VBInfo; int SiS_P3c2; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char MISC; } ;


 scalar_t__ SIS_661 ;
 int SetCRT2ToLCDA ;
 int SiS_SetRegByte (int ,unsigned char) ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_SetMiscRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
   unsigned char Miscdata;

   Miscdata = SiS_Pr->SiS_StandTable[StandTableIndex].MISC;

   if(SiS_Pr->ChipType < SIS_661) {
      if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
    Miscdata |= 0x0C;
  }
      }
   }

   SiS_SetRegByte(SiS_Pr->SiS_P3c2,Miscdata);
}
