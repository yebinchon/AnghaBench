
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {int SiS_SetFlag; int SiS_VBType; int SiS_VBInfo; scalar_t__ ChipType; unsigned short PanelVCLKIdx300; int SiS_LCDInfo; unsigned short PanelVCLKIdx315; int SiS_TVMode; int ChipRevision; scalar_t__ SiS_IF_DEF_CH70xx; scalar_t__ SiS_ModeType; unsigned char* SiS_CHTVVCLKUNTSC; unsigned char* SiS_CHTVVCLKONTSC; unsigned char* SiS_CHTVVCLKUPAL; unsigned char* SiS_CHTVVCLKOPAL; unsigned char* SiS_CHTVVCLKUPALM; unsigned char* SiS_CHTVVCLKOPALM; unsigned char* SiS_CHTVVCLKUPALN; unsigned char* SiS_CHTVVCLKOPALN; unsigned char* SiS_CHTVVCLKSOPAL; scalar_t__ SiS_CustomT; scalar_t__ SiS_CHSOverScan; TYPE_3__* SiS_SModeIDTable; int SiS_UseWide; int SiS_UseWideCRT2; TYPE_2__* SiS_RefIndex; TYPE_1__* SiS_EModeIDTable; scalar_t__ SiS_P3ca; } ;
struct TYPE_6__ {unsigned short St_ResInfo; unsigned short St_CRT2CRTC; } ;
struct TYPE_5__ {unsigned short Ext_CRT2CRTC; unsigned short Ext_CRTVCLK; } ;
struct TYPE_4__ {unsigned short Ext_RESINFO; } ;


 scalar_t__ CUT_BARCO1366 ;
 scalar_t__ CUT_PANEL848 ;
 scalar_t__ CUT_PANEL856 ;
 int DontExpandLCD ;
 unsigned short HiTVSimuVCLK ;
 unsigned short HiTVVCLK ;
 unsigned short HiTVVCLKDIV2 ;
 int LCDPass11 ;
 scalar_t__ ModeVGA ;
 int ProgrammingCRT2 ;
 scalar_t__ SIS_300 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_315PRO ;
 scalar_t__ SIS_630 ;
 scalar_t__ SIS_730 ;
 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToTV ;
 unsigned short SiS_GetRefCRTVCLK (struct SiS_Private*,unsigned short,int ) ;
 int SiS_GetRegByte (scalar_t__) ;
 scalar_t__ TVCLKBASE_300 ;
 scalar_t__ TVCLKBASE_315 ;
 int TVRPLLDIV2XO ;
 int TVSetCHOverScan ;
 int TVSetPAL ;
 int TVSetPALM ;
 int TVSetPALN ;
 int TVSetTVSimuMode ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 unsigned short TVVCLK ;
 unsigned short TVVCLKDIV2 ;
 int VB_SISVB ;
 unsigned short VCLK34_300 ;
 unsigned short VCLK34_315 ;
 unsigned short VCLK_1024x576 ;
 unsigned short VCLK_1152x864 ;
 unsigned short VCLK_1280x720 ;
 unsigned short VCLK_1360x768 ;
 unsigned short VCLK_720x480 ;
 unsigned short VCLK_720x576 ;
 unsigned short VCLK_768x576 ;
 unsigned short VCLK_800x480 ;
 unsigned short VCLK_848x480 ;
 unsigned short VCLK_856x480 ;
 unsigned short YPbPr750pVCLK ;

unsigned short
SiS_GetVCLK2Ptr(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RefreshRateTableIndex)
{
  unsigned short CRT2Index, VCLKIndex = 0, VCLKIndexGEN = 0, VCLKIndexGENCRT = 0;
  unsigned short resinfo, tempbx;
  const unsigned char *CHTVVCLKPtr = ((void*)0);

  if(ModeNo <= 0x13) {
     resinfo = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ResInfo;
     CRT2Index = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC;
     VCLKIndexGEN = (SiS_GetRegByte((SiS_Pr->SiS_P3ca+0x02)) >> 2) & 0x03;
     VCLKIndexGENCRT = VCLKIndexGEN;
  } else {
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;
     CRT2Index = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC;
     VCLKIndexGEN = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRTVCLK;
     VCLKIndexGENCRT = SiS_GetRefCRTVCLK(SiS_Pr, RefreshRateTableIndex,
  (SiS_Pr->SiS_SetFlag & ProgrammingCRT2) ? SiS_Pr->SiS_UseWideCRT2 : SiS_Pr->SiS_UseWide);
  }

  if(SiS_Pr->SiS_VBType & VB_SISVB) {

     if(SiS_Pr->SiS_SetFlag & ProgrammingCRT2) {

 CRT2Index >>= 6;
 if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {

    if(SiS_Pr->ChipType < SIS_315H) {
       VCLKIndex = SiS_Pr->PanelVCLKIdx300;
       if((SiS_Pr->SiS_LCDInfo & DontExpandLCD) && (SiS_Pr->SiS_LCDInfo & LCDPass11)) {
   VCLKIndex = VCLKIndexGEN;
       }
    } else {
       VCLKIndex = SiS_Pr->PanelVCLKIdx315;
       if((SiS_Pr->SiS_LCDInfo & DontExpandLCD) && (SiS_Pr->SiS_LCDInfo & LCDPass11)) {
   switch(resinfo) {

   case 133: VCLKIndex = VCLK_720x480; break;
   case 132: VCLKIndex = VCLK_720x576; break;
   case 131: VCLKIndex = VCLK_768x576; break;
   case 129: VCLKIndex = VCLK_848x480; break;
   case 128: VCLKIndex = VCLK_856x480; break;
   case 130: VCLKIndex = VCLK_800x480; break;
   case 137: VCLKIndex = VCLK_1024x576; break;
   case 136: VCLKIndex = VCLK_1152x864; break;
   case 135: VCLKIndex = VCLK_1280x720; break;
   case 134: VCLKIndex = VCLK_1360x768; break;
   default: VCLKIndex = VCLKIndexGEN;
   }

   if(ModeNo <= 0x13) {
      if(SiS_Pr->ChipType <= SIS_315PRO) {
         if(SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC == 1) VCLKIndex = 0x42;
      } else {
         if(SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC == 1) VCLKIndex = 0x00;
      }
   }
   if(SiS_Pr->ChipType <= SIS_315PRO) {
      if(VCLKIndex == 0) VCLKIndex = 0x41;
      if(VCLKIndex == 1) VCLKIndex = 0x43;
      if(VCLKIndex == 4) VCLKIndex = 0x44;
   }
       }
    }

 } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {

    if(SiS_Pr->SiS_VBInfo & SetCRT2ToHiVision) {
       if(SiS_Pr->SiS_TVMode & TVRPLLDIV2XO) VCLKIndex = HiTVVCLKDIV2;
       else VCLKIndex = HiTVVCLK;
       if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) VCLKIndex = HiTVSimuVCLK;
    } else if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) VCLKIndex = YPbPr750pVCLK;
    else if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) VCLKIndex = TVVCLKDIV2;
    else if(SiS_Pr->SiS_TVMode & TVRPLLDIV2XO) VCLKIndex = TVVCLKDIV2;
    else VCLKIndex = TVVCLK;

    if(SiS_Pr->ChipType < SIS_315H) VCLKIndex += TVCLKBASE_300;
    else VCLKIndex += TVCLKBASE_315;

 } else {

    VCLKIndex = VCLKIndexGENCRT;
    if(SiS_Pr->ChipType < SIS_315H) {
       if(ModeNo > 0x13) {
   if( (SiS_Pr->ChipType == SIS_630) &&
       (SiS_Pr->ChipRevision >= 0x30)) {
      if(VCLKIndex == 0x14) VCLKIndex = 0x34;
   }

   if(VCLKIndex == 0x17) VCLKIndex = 0x45;
       }
    }
 }

     } else {

 VCLKIndex = VCLKIndexGENCRT;
 if(SiS_Pr->ChipType < SIS_315H) {
    if(ModeNo > 0x13) {
       if( (SiS_Pr->ChipType != SIS_630) &&
    (SiS_Pr->ChipType != SIS_300) ) {
   if(VCLKIndex == 0x1b) VCLKIndex = 0x48;
       }
    }
 }
     }

  } else {

     VCLKIndex = CRT2Index;

     if(SiS_Pr->SiS_SetFlag & ProgrammingCRT2) {

 if( (SiS_Pr->SiS_IF_DEF_CH70xx != 0) && (SiS_Pr->SiS_VBInfo & SetCRT2ToTV) ) {

    VCLKIndex &= 0x1f;
    tempbx = 0;
    if(SiS_Pr->SiS_TVMode & TVSetCHOverScan) tempbx += 1;
    if(SiS_Pr->SiS_TVMode & TVSetPAL) {
       tempbx += 2;
       if(SiS_Pr->SiS_ModeType > ModeVGA) {
   if(SiS_Pr->SiS_CHSOverScan) tempbx = 8;
       }
       if(SiS_Pr->SiS_TVMode & TVSetPALM) {
   tempbx = 4;
   if(SiS_Pr->SiS_TVMode & TVSetCHOverScan) tempbx += 1;
       } else if(SiS_Pr->SiS_TVMode & TVSetPALN) {
   tempbx = 6;
   if(SiS_Pr->SiS_TVMode & TVSetCHOverScan) tempbx += 1;
       }
    }
    switch(tempbx) {
      case 0: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKUNTSC; break;
      case 1: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKONTSC; break;
      case 2: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKUPAL; break;
      case 3: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKOPAL; break;
      case 4: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKUPALM; break;
      case 5: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKOPALM; break;
      case 6: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKUPALN; break;
      case 7: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKOPALN; break;
      case 8: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKSOPAL; break;
      default: CHTVVCLKPtr = SiS_Pr->SiS_CHTVVCLKOPAL; break;
    }
    VCLKIndex = CHTVVCLKPtr[VCLKIndex];

 } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {

    if(SiS_Pr->ChipType < SIS_315H) {
       VCLKIndex = SiS_Pr->PanelVCLKIdx300;
    } else {
       VCLKIndex = SiS_Pr->PanelVCLKIdx315;
    }
 } else {

    VCLKIndex = VCLKIndexGENCRT;
    if(SiS_Pr->ChipType < SIS_315H) {
       if(ModeNo > 0x13) {
   if( (SiS_Pr->ChipType == SIS_630) &&
       (SiS_Pr->ChipRevision >= 0x30) ) {
      if(VCLKIndex == 0x14) VCLKIndex = 0x2e;
   }
       }
    }
 }

     } else {

 VCLKIndex = VCLKIndexGENCRT;
 if(SiS_Pr->ChipType < SIS_315H) {
    if(ModeNo > 0x13) {
       if( (SiS_Pr->ChipType != SIS_630) &&
    (SiS_Pr->ChipType != SIS_300) ) {
   if(VCLKIndex == 0x1b) VCLKIndex = 0x48;
       }






    }
        }

     }

  }

  return VCLKIndex;
}
