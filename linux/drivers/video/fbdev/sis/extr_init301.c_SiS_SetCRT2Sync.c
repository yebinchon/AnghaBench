
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {unsigned short CInfoFlag; int SiS_IF_DEF_LVDS; int SiS_VBInfo; int SiS_LCDInfo; scalar_t__ SiS_CustomT; scalar_t__ ChipType; int SiS_VBType; scalar_t__ SiS_LCDResInfo; int SiS_Part2Port; int SiS_Part1Port; scalar_t__ SiS_P3ca; scalar_t__ UseCustomMode; int SiS_P3d4; scalar_t__ SiS_IF_DEF_DSTN; scalar_t__ SiS_IF_DEF_FSTN; scalar_t__ SiS_IF_DEF_TRUMPION; TYPE_1__* SiS_RefIndex; } ;
struct TYPE_2__ {unsigned short Ext_InfoFlag; } ;


 scalar_t__ CUT_BARCO1024 ;
 scalar_t__ CUT_BARCO1366 ;
 scalar_t__ CUT_CLEVO1400 ;
 scalar_t__ CUT_COMPAQ1280 ;
 scalar_t__ CUT_PANEL848 ;
 scalar_t__ CUT_PANEL856 ;
 int LCDPass11 ;
 int LCDRGB18Bit ;
 int LCDSync ;
 scalar_t__ Panel_1280x1024 ;
 scalar_t__ Panel_1400x1050 ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToTV ;
 unsigned short SiS_GetReg (int ,int) ;
 unsigned short SiS_GetRegByte (scalar_t__) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 int VB_NoLCD ;
 int VB_SIS30xBLV ;
 int VB_SIS30xC ;
 int VB_SISLVDS ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_SetCRT2Sync(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short RefreshRateTableIndex)
{
   unsigned short tempah=0, tempbl, infoflag;

   tempbl = 0xC0;

   if(SiS_Pr->UseCustomMode) {
      infoflag = SiS_Pr->CInfoFlag;
   } else {
      infoflag = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_InfoFlag;
   }

   if(SiS_Pr->SiS_IF_DEF_LVDS == 1) {

      if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
  tempah = 0;
      } else if((SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) && (SiS_Pr->SiS_LCDInfo & LCDSync)) {
  tempah = SiS_Pr->SiS_LCDInfo;
      } else tempah = infoflag >> 8;
      tempah &= 0xC0;
      tempah |= 0x20;
      if(!(SiS_Pr->SiS_LCDInfo & LCDRGB18Bit)) tempah |= 0x10;
      if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {
  if((SiS_Pr->SiS_CustomT == CUT_BARCO1366) ||
     (SiS_Pr->SiS_CustomT == CUT_BARCO1024)) {
     tempah |= 0xf0;
  }
  if( (SiS_Pr->SiS_IF_DEF_FSTN) ||
      (SiS_Pr->SiS_IF_DEF_DSTN) ||
      (SiS_Pr->SiS_IF_DEF_TRUMPION) ||
      (SiS_Pr->SiS_CustomT == CUT_PANEL848) ||
      (SiS_Pr->SiS_CustomT == CUT_PANEL856) ) {
     tempah |= 0x30;
  }
  if( (SiS_Pr->SiS_IF_DEF_FSTN) ||
      (SiS_Pr->SiS_IF_DEF_DSTN) ) {
     tempah &= ~0xc0;
  }
      }
      if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
  if(SiS_Pr->ChipType >= SIS_315H) {
     tempah >>= 3;
     tempah &= 0x18;
     SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x13,0xE7,tempah);

  } else {
     SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x19,0x0F,0xe0);
  }
      } else {
  SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x19,0x0F,tempah);
      }

   } else if(SiS_Pr->SiS_VBType & VB_SISVB) {

      if(SiS_Pr->ChipType < SIS_315H) {
      } else {
      }
   }
}
