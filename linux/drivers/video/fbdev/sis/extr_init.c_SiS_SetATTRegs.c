
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_VBType; int SiS_VBInfo; int SiS_IF_DEF_LVDS; scalar_t__ SiS_IF_DEF_CH70xx; scalar_t__ ChipType; int SiS_P3da; int SiS_P3c0; TYPE_1__* SiS_StandTable; } ;
struct TYPE_2__ {unsigned char* ATTR; } ;


 scalar_t__ IS_SIS550650740660 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_661 ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToTV ;
 int SetInSlaveMode ;
 int SiS_GetRegByte (int ) ;
 int SiS_SetRegByte (int ,int) ;
 int VB_SIS30xB ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_SetATTRegs(struct SiS_Private *SiS_Pr, unsigned short StandTableIndex)
{
   unsigned char ARdata;
   unsigned short i;

   for(i = 0; i <= 0x13; i++) {
      ARdata = SiS_Pr->SiS_StandTable[StandTableIndex].ATTR[i];

      if(i == 0x13) {



  if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
     if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) ARdata = 0;
  }
  if(SiS_Pr->SiS_IF_DEF_LVDS == 1) {
     if(SiS_Pr->SiS_IF_DEF_CH70xx != 0) {
        if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
    if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) ARdata = 0;
        }
     }
  }
  if(SiS_Pr->ChipType >= SIS_661) {
     if(SiS_Pr->SiS_VBInfo & (SetCRT2ToTV | SetCRT2ToLCD)) {
        if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) ARdata = 0;
     }
  } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {
     if(SiS_Pr->ChipType >= SIS_315H) {
        if(IS_SIS550650740660) {

    if(SiS_Pr->SiS_VBType & VB_SIS30xB) {
       if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) ARdata = 0;
    } else {
       ARdata = 0;
    }
        }
     } else {
        if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) ARdata = 0;
     }
  }
      }
      SiS_GetRegByte(SiS_Pr->SiS_P3da);
      SiS_SetRegByte(SiS_Pr->SiS_P3c0,i);
      SiS_SetRegByte(SiS_Pr->SiS_P3c0,ARdata);
   }

   SiS_GetRegByte(SiS_Pr->SiS_P3da);
   SiS_SetRegByte(SiS_Pr->SiS_P3c0,0x14);
   SiS_SetRegByte(SiS_Pr->SiS_P3c0,0x00);

   SiS_GetRegByte(SiS_Pr->SiS_P3da);
   SiS_SetRegByte(SiS_Pr->SiS_P3c0,0x20);
   SiS_GetRegByte(SiS_Pr->SiS_P3da);
}
