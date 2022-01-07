
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {unsigned short CModeFlag; int SiS_IF_DEF_LVDS; int SiS_VBType; scalar_t__ ChipType; int SiS_VBInfo; int SiS_LCDResInfo; unsigned short SiS_LCDHDES; unsigned short SiS_HDE; int SiS_LCDInfo; unsigned short PanelXRes; unsigned short SiS_HT; int PanelHRS; int PanelHRE; unsigned short SiS_VGAVDE; unsigned short PanelYRes; unsigned short SiS_LCDVDES; unsigned short SiS_VT; unsigned short SiS_VGAVT; int PanelVRS; int PanelVRE; unsigned int SiS_VDE; int SiS_SetFlag; int ChipRevision; int SiS_IF_DEF_CH70xx; unsigned int SiS_VGAHDE; int SiS_VGAHT; unsigned char* VirtualRomBase; int SiS_LCDTypeInfo; int SiS_Part1Port; scalar_t__ SiS_IF_DEF_FSTN; scalar_t__ SiS_IF_DEF_DSTN; scalar_t__ SiS_UseROM; scalar_t__ SiS_IF_DEF_TRUMPION; int SiS_Part4Port; int SiS_P3c4; TYPE_3__* SiS_RefIndex; TYPE_2__* SiS_EModeIDTable; scalar_t__ UseCustomMode; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_6__ {unsigned short Ext_CRT2CRTC; } ;
struct TYPE_5__ {unsigned short Ext_ModeFlag; unsigned short Ext_RESINFO; } ;
struct TYPE_4__ {unsigned short St_ModeFlag; unsigned short St_ResInfo; unsigned short St_CRT2CRTC; } ;


 int DontExpandLCD ;
 int EnableLVDSDDA ;
 unsigned short HalfDCLK ;
 scalar_t__ IS_SIS330 ;
 scalar_t__ IS_SIS740 ;
 int LCDPass11 ;
 int LCDRGB18Bit ;


 int Panel_1280x1024 ;
 int Panel_320x240_1 ;
 int Panel_320x240_2 ;
 int Panel_320x240_3 ;


 scalar_t__ SIS_315H ;
 scalar_t__ SIS_740 ;
 unsigned short SIS_RI_1024x600 ;
 unsigned short SIS_RI_1024x768 ;
 unsigned short SIS_RI_800x600 ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToTV ;
 int SetInSlaveMode ;
 unsigned char** SiS300_TrumpionData ;
 int SiS_GetReg (int ,int) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_SetTrumpionBlock (struct SiS_Private*,unsigned char*) ;
 int VB_NoLCD ;
 int VB_SIS30xC ;
 int VB_SISLVDS ;
 int VB_SISPART4SCALER ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_SetGroup1_LVDS(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RefreshRateTableIndex)
{
  unsigned short modeflag, resinfo = 0;
  unsigned short push2, tempax, tempbx, tempcx, temp;
  unsigned int tempeax = 0, tempebx, tempecx, tempvcfact = 0;
  bool islvds = 0, issis = 0, chkdclkfirst = 0;







  if(ModeNo <= 0x13) {
     modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
     resinfo = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ResInfo;



  } else if(SiS_Pr->UseCustomMode) {
     modeflag = SiS_Pr->CModeFlag;
  } else {
     modeflag = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;



  }


  if((SiS_Pr->SiS_IF_DEF_LVDS == 1) || (SiS_Pr->SiS_VBType & VB_NoLCD)) {
     islvds = 1;
  }


  if((SiS_Pr->SiS_VBType & VB_SISVB) && (!(SiS_Pr->SiS_VBType & VB_NoLCD))) {
     issis = 1;
  }

  if((SiS_Pr->ChipType >= SIS_315H) && (islvds) && (!(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA))) {
     if((!SiS_Pr->SiS_IF_DEF_FSTN) && (!SiS_Pr->SiS_IF_DEF_DSTN)) {
        chkdclkfirst = 1;
     }
  }
  tempax = SiS_Pr->SiS_LCDHDES;
  if(islvds) {
     if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
 if(!SiS_Pr->SiS_IF_DEF_FSTN && !SiS_Pr->SiS_IF_DEF_DSTN) {
    if((SiS_Pr->SiS_LCDResInfo == 129) &&
       (!(SiS_Pr->SiS_VBInfo & SetInSlaveMode))) {
       tempax -= 8;
    }
 }
     }
  }

  temp = (tempax & 0x0007);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1A,temp);
  temp = (tempax >> 3) & 0x00FF;
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x16,temp);

  tempbx = SiS_Pr->SiS_HDE;
  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
        tempbx = SiS_Pr->PanelXRes;
     }
     if((SiS_Pr->SiS_LCDResInfo == Panel_320x240_1) ||
        (SiS_Pr->SiS_LCDResInfo == Panel_320x240_2) ||
        (SiS_Pr->SiS_LCDResInfo == Panel_320x240_3)) {
        tempbx >>= 1;
     }
  }

  tempax += tempbx;
  if(tempax >= SiS_Pr->SiS_HT) tempax -= SiS_Pr->SiS_HT;

  temp = tempax;
  if(temp & 0x07) temp += 8;
  temp >>= 3;
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x17,temp);

  tempcx = (SiS_Pr->SiS_HT - tempbx) >> 2;

  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
        if(SiS_Pr->PanelHRS != 999) tempcx = SiS_Pr->PanelHRS;
     }
  }

  tempcx += tempax;
  if(tempcx >= SiS_Pr->SiS_HT) tempcx -= SiS_Pr->SiS_HT;

  temp = (tempcx >> 3) & 0x00FF;
  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     if(SiS_Pr->SiS_IF_DEF_TRUMPION) {
 if(SiS_Pr->SiS_LCDResInfo == 130) {
    switch(ModeNo) {
    case 0x04:
    case 0x05:
    case 0x0d: temp = 0x56; break;
    case 0x10: temp = 0x60; break;
    case 0x13: temp = 0x5f; break;
    case 0x40:
    case 0x41:
    case 0x4f:
    case 0x43:
    case 0x44:
    case 0x62:
    case 0x56:
    case 0x53:
    case 0x5d:
    case 0x5e: temp = 0x54; break;
    }
 }
     }
  }
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x14,temp);

  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     temp += 2;
     if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
 temp += 8;
 if(SiS_Pr->PanelHRE != 999) {
    temp = tempcx + SiS_Pr->PanelHRE;
    if(temp >= SiS_Pr->SiS_HT) temp -= SiS_Pr->SiS_HT;
    temp >>= 3;
 }
     }
  } else {
     temp += 10;
  }

  temp &= 0x1F;
  temp |= ((tempcx & 0x07) << 5);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x15,temp);



  tempax = SiS_Pr->SiS_VGAVDE;
  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
 tempax = SiS_Pr->PanelYRes;
     }
  }

  tempbx = SiS_Pr->SiS_LCDVDES + tempax;
  if(tempbx >= SiS_Pr->SiS_VT) tempbx -= SiS_Pr->SiS_VT;

  push2 = tempbx;

  tempcx = SiS_Pr->SiS_VGAVT - SiS_Pr->SiS_VGAVDE;
  if(SiS_Pr->ChipType < SIS_315H) {
     if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
 if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
    tempcx = SiS_Pr->SiS_VGAVT - SiS_Pr->PanelYRes;
 }
     }
  }
  if(islvds) tempcx >>= 1;
  else tempcx >>= 2;

  if( (SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) &&
      (!(SiS_Pr->SiS_LCDInfo & LCDPass11)) &&
      (SiS_Pr->PanelVRS != 999) ) {
     tempcx = SiS_Pr->PanelVRS;
     tempbx += tempcx;
     if(issis) tempbx++;
  } else {
     tempbx += tempcx;
     if(SiS_Pr->ChipType < SIS_315H) tempbx++;
     else if(issis) tempbx++;
  }

  if(tempbx >= SiS_Pr->SiS_VT) tempbx -= SiS_Pr->SiS_VT;

  temp = tempbx & 0x00FF;
  if(SiS_Pr->SiS_IF_DEF_TRUMPION) {
     if(SiS_Pr->SiS_LCDResInfo == 130) {
 if(ModeNo == 0x10) temp = 0xa9;
     }
  }
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x18,temp);

  tempcx >>= 3;
  tempcx++;

  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     if(!(SiS_Pr->SiS_LCDInfo & LCDPass11)) {
        if(SiS_Pr->PanelVRE != 999) tempcx = SiS_Pr->PanelVRE;
     }
  }

  tempcx += tempbx;
  temp = tempcx & 0x000F;
  SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x19,0xF0,temp);

  temp = ((tempbx >> 8) & 0x07) << 3;
  if(SiS_Pr->SiS_IF_DEF_FSTN || SiS_Pr->SiS_IF_DEF_DSTN) {
     if(SiS_Pr->SiS_HDE != 640) {
        if(SiS_Pr->SiS_VGAVDE != SiS_Pr->SiS_VDE) temp |= 0x40;
     }
  } else if(SiS_Pr->SiS_VGAVDE != SiS_Pr->SiS_VDE) temp |= 0x40;
  if(SiS_Pr->SiS_SetFlag & EnableLVDSDDA) temp |= 0x40;
  tempbx = 0x87;
  if((SiS_Pr->ChipType >= SIS_315H) ||
     (SiS_Pr->ChipRevision >= 0x30)) {
     tempbx = 0x07;
     if((SiS_Pr->SiS_IF_DEF_CH70xx == 1) && (SiS_Pr->SiS_VBInfo & SetCRT2ToTV)) {
 if(SiS_GetReg(SiS_Pr->SiS_Part1Port,0x00) & 0x03) temp |= 0x80;
     }

     if(SiS_Pr->SiS_LCDInfo & LCDRGB18Bit) {
 if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
    if(SiS_GetReg(SiS_Pr->SiS_P3c4,0x06) & 0x10) temp |= 0x80;
 } else {
    if(SiS_GetReg(SiS_Pr->SiS_Part1Port,0x00) & 0x01) temp |= 0x80;
 }
     }
  }
  SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,0x1A,tempbx,temp);

  tempbx = push2;

  tempcx = SiS_Pr->SiS_LCDVDES;

  if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {
     switch(SiS_Pr->SiS_LCDResInfo) {
     case 129:
 tempbx = SiS_Pr->SiS_VGAVDE - 1;
 tempcx = SiS_Pr->SiS_VGAVDE;
 break;
     case 128:
 if(!(SiS_Pr->SiS_VBInfo & SetInSlaveMode)) {
    if(resinfo == SIS_RI_800x600) tempcx++;
 }
 break;
     case 131:
 if(!(SiS_Pr->SiS_VBInfo & SetInSlaveMode)) {
    if(resinfo == SIS_RI_1024x600) tempcx++;
    if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {
       if(resinfo == SIS_RI_800x600) tempcx++;
    }
 }
 break;
     case 130:
 if(SiS_Pr->ChipType < SIS_315H) {
    if(!(SiS_Pr->SiS_VBInfo & SetInSlaveMode)) {
       if(resinfo == SIS_RI_1024x768) tempcx++;
    }
 }
 break;
     }
  }

  temp = ((tempbx >> 8) & 0x07) << 3;
  temp |= ((tempcx >> 8) & 0x07);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1D,temp);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1C,tempbx);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1B,tempcx);



  if(SiS_Pr->ChipType < SIS_315H) {
  } else {
  }



  tempeax = SiS_Pr->SiS_VGAHDE;
  if(chkdclkfirst) {
     if(modeflag & HalfDCLK) tempeax >>= 1;
  }
  tempebx = tempeax << 16;
  if(SiS_Pr->SiS_HDE == tempeax) {
     tempecx = 0xFFFF;
  } else {
     tempecx = tempebx / SiS_Pr->SiS_HDE;
     if(SiS_Pr->ChipType >= SIS_315H) {
        if(tempebx % SiS_Pr->SiS_HDE) tempecx++;
     }
  }

  if(SiS_Pr->ChipType >= SIS_315H) {
     tempeax = (tempebx / tempecx) - 1;
  } else {
     tempeax = ((SiS_Pr->SiS_VGAHT << 16) / tempecx) - 1;
  }
  tempecx = (tempecx << 16) | (tempeax & 0xFFFF);
  temp = (unsigned short)(tempecx & 0x00FF);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1F,temp);

  if(SiS_Pr->ChipType >= SIS_315H) {
     tempeax = (SiS_Pr->SiS_VGAVDE << 18) / tempvcfact;
     tempbx = (unsigned short)(tempeax & 0xFFFF);
  } else {
     tempeax = SiS_Pr->SiS_VGAVDE << 6;
     tempbx = tempvcfact & 0x3f;
     if(tempbx == 0) tempbx = 64;
     tempeax /= tempbx;
     tempbx = (unsigned short)(tempeax & 0xFFFF);
  }
  if(SiS_Pr->SiS_LCDResInfo == 130) tempbx--;
  if(SiS_Pr->SiS_SetFlag & EnableLVDSDDA) {
     if((!SiS_Pr->SiS_IF_DEF_FSTN) && (!SiS_Pr->SiS_IF_DEF_DSTN)) tempbx = 1;
     else if(SiS_Pr->SiS_LCDResInfo != 129) tempbx = 1;
  }

  temp = ((tempbx >> 8) & 0x07) << 3;
  temp = temp | ((tempecx >> 8) & 0x07);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x20,temp);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x21,tempbx);

  tempecx >>= 16;
  if(!chkdclkfirst) {
     if(modeflag & HalfDCLK) tempecx >>= 1;
  }
  temp = (unsigned short)((tempecx & 0xFF00) >> 8);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x22,temp);
  temp = (unsigned short)(tempecx & 0x00FF);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x23,temp);
}
