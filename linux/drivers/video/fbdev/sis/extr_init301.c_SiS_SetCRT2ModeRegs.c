
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char* VirtualRomBase; int SiS_VBInfo; scalar_t__ ChipType; short SiS_ModeType; int SiS_VBType; int SiS_IF_DEF_LVDS; int PanelXRes; int PanelYRes; int SiS_TVMode; int SiS_TVBlue; scalar_t__ SiS_IF_DEF_CH70xx; int SiS_Part1Port; int SiS_Part4Port; scalar_t__ SiS_ROMNew; int SiS_P3c4; } ;


 unsigned short CRT2Mode ;
 int DisableCRT2Display ;
 int DriverMode ;
 int IS_SIS65x ;
 scalar_t__ IS_SIS740 ;
 short ModeVGA ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_550 ;
 scalar_t__ SIS_661 ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToTV ;
 int SetInSlaveMode ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;
 unsigned short SiS_GetReg (int ,int) ;
 scalar_t__ SiS_IsDualEdge (struct SiS_Private*) ;
 scalar_t__ SiS_IsDualLink (struct SiS_Private*) ;
 int SiS_SetReg (int ,int,unsigned short) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,unsigned short,unsigned short) ;
 int SiS_SetRegOR (int ,int,int) ;
 int TVRPLLDIV2XO ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 int VB_NoLCD ;
 int VB_SIS301 ;
 int VB_SIS30xBLV ;
 int VB_SIS30xCLV ;
 int VB_SISLVDS ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_SetCRT2ModeRegs(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex)
{
  unsigned short i, j, modeflag, tempah=0;
  short tempcl;
  modeflag = SiS_GetModeFlag(SiS_Pr, ModeNo, ModeIdIndex);

  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {

     SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x00,0xAF,0x40);
     SiS_SetRegAND(SiS_Pr->SiS_Part1Port,0x2E,0xF7);

  } else {

     for(i=0,j=4; i<3; i++,j++) SiS_SetReg(SiS_Pr->SiS_Part1Port,j,0);
     if(SiS_Pr->ChipType >= SIS_315H) {
        SiS_SetRegAND(SiS_Pr->SiS_Part1Port,0x02,0x7F);
     }

     tempcl = SiS_Pr->SiS_ModeType;

     if(SiS_Pr->ChipType < SIS_315H) {
     } else {
     }

     if(SiS_Pr->SiS_VBInfo & DisableCRT2Display) tempah = 0;

     if(SiS_Pr->ChipType < SIS_315H) {
 SiS_SetReg(SiS_Pr->SiS_Part1Port,0x00,tempah);
     } else {
     }

     if(SiS_Pr->SiS_VBType & VB_SISVB) {

 tempah = 0x01;
 if(!(SiS_Pr->SiS_VBInfo & SetInSlaveMode)) {
    tempah |= 0x02;
 }
 if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC)) {
    tempah ^= 0x05;
    if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) {
       tempah ^= 0x01;
    }
 }

 if(SiS_Pr->ChipType < SIS_315H) {

    if(SiS_Pr->SiS_VBInfo & DisableCRT2Display) tempah = 0;

    tempah = (tempah << 5) & 0xFF;
    SiS_SetReg(SiS_Pr->SiS_Part1Port,0x01,tempah);
    tempah = (tempah >> 5) & 0xFF;

 } else {

    if(SiS_Pr->SiS_VBInfo & DisableCRT2Display) tempah = 0x08;
    else if(!(SiS_IsDualEdge(SiS_Pr))) tempah |= 0x08;
    SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x2E,0xF0,tempah);
    tempah &= ~0x08;

 }

 if((SiS_Pr->SiS_ModeType == ModeVGA) && (!(SiS_Pr->SiS_VBInfo & SetInSlaveMode))) {
    tempah |= 0x10;
 }

 tempah |= 0x80;
 if(SiS_Pr->SiS_VBType & VB_SIS301) {
    if(SiS_Pr->PanelXRes < 1280 && SiS_Pr->PanelYRes < 960) tempah &= ~0x80;
 }

 if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
    if(!(SiS_Pr->SiS_TVMode & (TVSetYPbPr750p | TVSetYPbPr525p))) {
       if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
   tempah |= 0x20;
       }
    }
 }

 SiS_SetRegANDOR(SiS_Pr->SiS_Part4Port,0x0D,0x40,tempah);

 tempah = 0x80;
 if(SiS_Pr->SiS_VBType & VB_SIS301) {
    if(SiS_Pr->PanelXRes < 1280 && SiS_Pr->PanelYRes < 960) tempah = 0;
 }

 if(SiS_IsDualLink(SiS_Pr)) tempah |= 0x40;

 if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
    if(SiS_Pr->SiS_TVMode & TVRPLLDIV2XO) {
       tempah |= 0x40;
    }
 }

 SiS_SetReg(SiS_Pr->SiS_Part4Port,0x0C,tempah);

     } else {

 if(SiS_Pr->ChipType >= SIS_315H) {
 } else {
 }

     }

  }

  if(SiS_Pr->SiS_VBType & VB_SISVB) {

     if(SiS_Pr->ChipType >= SIS_315H) {
     } else if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
     }

     if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
 SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x0D,0x80);
 if(SiS_Pr->SiS_VBType & VB_SIS30xCLV) {
    SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x3A,0xC0);
        }
     }

  } else {
  }

}
