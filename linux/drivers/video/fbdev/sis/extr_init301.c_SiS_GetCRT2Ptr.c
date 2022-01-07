
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {int SiS_VBType; scalar_t__ SiS_IF_DEF_LVDS; int SiS_VBInfo; unsigned short SiS_LCDResInfo; int SiS_SetFlag; int SiS_LCDInfo; scalar_t__ SiS_CustomT; int SiS_TVMode; scalar_t__ SiS_ModeType; scalar_t__ SiS_CHSOverScan; scalar_t__ SiS_IF_DEF_CH70xx; TYPE_3__* SiS_RefIndex; TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_6__ {unsigned short Ext_CRT2CRTC; unsigned short Ext_CRT2CRTC_NS; } ;
struct TYPE_5__ {unsigned short Ext_RESINFO; } ;
struct TYPE_4__ {unsigned short St_CRT2CRTC; } ;


 scalar_t__ CUT_BARCO1024 ;
 scalar_t__ CUT_COMPAQ1280 ;
 scalar_t__ CUT_PANEL848 ;
 scalar_t__ CUT_PANEL856 ;
 int DontExpandLCD ;
 int LCDPass11 ;
 int LCDVESATiming ;
 scalar_t__ ModeVGA ;





 unsigned short Panel_1280x800 ;
 unsigned short Panel_1280x800_2 ;
 unsigned short Panel_1280x854 ;


 unsigned short Panel_1680x1050 ;
 unsigned short SIS_RI_1280x768 ;
 unsigned short SIS_RI_1280x800 ;
 unsigned short SIS_RI_1400x1050 ;





 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToTV ;
 int SetCRT2ToTVNoHiVision ;
 int SetCRT2ToYPbPr525750 ;
 int SetInSlaveMode ;
 int TVSetCHOverScan ;
 int TVSetPAL ;
 int TVSetPALM ;
 int TVSetPALN ;
 int TVSetTVSimuMode ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_GetCRT2Ptr(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
        unsigned short RefreshRateTableIndex, unsigned short *CRT2Index,
        unsigned short *ResIndex)
{
  unsigned short tempbx=0, tempal=0, resinfo=0;

  if(ModeNo <= 0x13) {
     tempal = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC;
  } else {
     tempal = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC;
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;
  }

  if((SiS_Pr->SiS_VBType & VB_SISVB) && (SiS_Pr->SiS_IF_DEF_LVDS == 0)) {

     if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {

 tempbx = SiS_Pr->SiS_LCDResInfo;
 if(!(SiS_Pr->SiS_SetFlag & LCDVESATiming)) tempbx += 32;


 if(SiS_Pr->SiS_LCDResInfo == Panel_1680x1050) {
    if (resinfo == SIS_RI_1280x800) tempal = 9;
    else if(resinfo == SIS_RI_1400x1050) tempal = 11;
 } else if((SiS_Pr->SiS_LCDResInfo == Panel_1280x800) ||
    (SiS_Pr->SiS_LCDResInfo == Panel_1280x800_2) ||
    (SiS_Pr->SiS_LCDResInfo == Panel_1280x854)) {
    if (resinfo == SIS_RI_1280x768) tempal = 9;
 }

 if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {



    tempbx = 100;
    if(ModeNo >= 0x13) {
       tempal = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC_NS;
    }
 }
     } else {

 if(SiS_Pr->SiS_VBInfo & SetCRT2ToHiVision) {

    tempbx = 2;
    if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
       tempbx = 13;
       if(!(SiS_Pr->SiS_TVMode & TVSetTVSimuMode)) tempbx = 14;
    }
 } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
    if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempbx = 7;
    else if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) tempbx = 6;
    else tempbx = 5;
    if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) tempbx += 5;
 } else {
    if(SiS_Pr->SiS_TVMode & TVSetPAL) tempbx = 3;
    else tempbx = 4;
    if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) tempbx += 5;
 }

     }

     tempal &= 0x3F;

     if(ModeNo > 0x13) {
        if(SiS_Pr->SiS_VBInfo & SetCRT2ToTVNoHiVision) {
    switch(resinfo) {
    case 131:
       tempal = 6;
       if(SiS_Pr->SiS_TVMode & (TVSetPAL | TVSetPALN)) tempal = 9;
       break;
    case 130:
    case 129:
    case 135:
       tempal = 6;
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempal = 8;
       }
       break;
    case 128:
       tempal = 4;
       break;
    case 132:
    case 134:
       tempal = 7;
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) tempal = 8;
       }
       break;
    case 133:
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempal = 9;
       }
       break;
    }
 }
     }

     *CRT2Index = tempbx;
     *ResIndex = tempal;

  } else {

     tempbx = 0;
     if((SiS_Pr->SiS_IF_DEF_CH70xx) && (SiS_Pr->SiS_VBInfo & SetCRT2ToTV)) {

 tempbx = 90;
 if(SiS_Pr->SiS_TVMode & TVSetPAL) {
    tempbx = 92;
    if(SiS_Pr->SiS_ModeType > ModeVGA) {
       if(SiS_Pr->SiS_CHSOverScan) tempbx = 99;
    }
    if(SiS_Pr->SiS_TVMode & TVSetPALM) tempbx = 94;
    else if(SiS_Pr->SiS_TVMode & TVSetPALN) tempbx = 96;
 }
 if(tempbx != 99) {
    if(SiS_Pr->SiS_TVMode & TVSetCHOverScan) tempbx++;
 }

     } else {

 switch(SiS_Pr->SiS_LCDResInfo) {
 case 138: tempbx = 12; break;
 case 141: tempbx = 10; break;
 case 140:
 case 139: tempbx = 14; break;
 case 137: tempbx = 16; break;
 case 148: tempbx = 18; break;
 case 146:
 case 147: tempbx = 20; break;
 case 144: tempbx = 22; break;
 case 145: tempbx = 24; break;
 case 143: tempbx = 26; break;
 case 142: tempbx = 28; break;



 }

 switch(SiS_Pr->SiS_LCDResInfo) {
 case 141:
 case 140:
 case 139:
 case 138:
    break;
 default:
    if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) tempbx++;
 }

 if(SiS_Pr->SiS_LCDInfo & LCDPass11) tempbx = 30;
     }

     (*CRT2Index) = tempbx;
     (*ResIndex) = tempal & 0x1F;
  }
}
