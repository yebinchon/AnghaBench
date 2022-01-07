
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned short SiS_VGAHDE; int SiS_LCDInfo; unsigned short CHDisplay; unsigned short CHBlankStart; unsigned short CVDisplay; unsigned short SiS_VGAVDE; unsigned short CVBlankStart; scalar_t__ ChipType; unsigned short SiS_VGAHT; unsigned short PanelHT; unsigned short PanelXRes; unsigned short CHTotal; unsigned short CHBlankEnd; int CHSyncStart; int PanelHRS; int CHSyncEnd; int PanelHRE; unsigned short PanelVT; unsigned short PanelYRes; scalar_t__ SiS_LCDResInfo; unsigned short SiS_VGAVT; unsigned short CVTotal; unsigned short CVBlankEnd; unsigned short CVSyncStart; unsigned short CVSyncEnd; int* CCRT1CRTC; int SiS_P3d4; int SiS_P3c4; scalar_t__ PanelVRE; scalar_t__ PanelVRS; } ;


 int DontExpandLCD ;
 unsigned short DoubleScanMode ;
 unsigned short HalfDCLK ;
 int LCDPass11 ;
 scalar_t__ Panel_1024x600 ;
 scalar_t__ Panel_1024x768 ;
 scalar_t__ Panel_800x600 ;
 scalar_t__ SIS_315H ;
 int SiS_CalcCRRegisters (struct SiS_Private*,int) ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;

void
SiS_CalcLCDACRT1Timing(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex)
{
   unsigned short modeflag, tempax, tempbx = 0, remaining = 0;
   unsigned short VGAHDE = SiS_Pr->SiS_VGAHDE;
   int i, j;


   if(SiS_Pr->SiS_LCDInfo & LCDPass11) return;

   modeflag = SiS_GetModeFlag(SiS_Pr, ModeNo, ModeIdIndex);

   if(modeflag & HalfDCLK) VGAHDE >>= 1;

   SiS_Pr->CHDisplay = VGAHDE;
   SiS_Pr->CHBlankStart = VGAHDE;

   SiS_Pr->CVDisplay = SiS_Pr->SiS_VGAVDE;
   SiS_Pr->CVBlankStart = SiS_Pr->SiS_VGAVDE;

   if(SiS_Pr->ChipType < SIS_315H) {
   } else {
   }
   SiS_Pr->CHTotal = SiS_Pr->CHBlankEnd = tempbx;

   if(SiS_Pr->ChipType < SIS_315H) {
   } else {
   }

   tempbx = SiS_Pr->PanelVT - SiS_Pr->PanelYRes;
   tempax = SiS_Pr->SiS_VGAVDE;
   if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {
      tempax = SiS_Pr->PanelYRes;
   } else if(SiS_Pr->ChipType < SIS_315H) {
   }
   SiS_Pr->CVTotal = SiS_Pr->CVBlankEnd = tempbx + tempax;

   tempax = SiS_Pr->SiS_VGAVDE;
   if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {
      tempax += (SiS_Pr->PanelYRes - tempax) >> 1;
   }
   tempax += SiS_Pr->PanelVRS;
   SiS_Pr->CVSyncStart = tempax;
   tempax += SiS_Pr->PanelVRE;
   SiS_Pr->CVSyncEnd = tempax;
   if(SiS_Pr->ChipType < SIS_315H) {
      SiS_Pr->CVSyncStart--;
      SiS_Pr->CVSyncEnd--;
   }

   SiS_CalcCRRegisters(SiS_Pr, 8);
   SiS_Pr->CCRT1CRTC[15] &= ~0xF8;
   SiS_Pr->CCRT1CRTC[15] |= (remaining << 4);
   SiS_Pr->CCRT1CRTC[16] &= ~0xE0;

   SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x11,0x7f);

   for(i = 0, j = 0; i <= 7; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,SiS_Pr->CCRT1CRTC[i]);
   }
   for(j = 0x10; i <= 10; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,SiS_Pr->CCRT1CRTC[i]);
   }
   for(j = 0x15; i <= 12; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3d4,j,SiS_Pr->CCRT1CRTC[i]);
   }
   for(j = 0x0A; i <= 15; i++, j++) {
      SiS_SetReg(SiS_Pr->SiS_P3c4,j,SiS_Pr->CCRT1CRTC[i]);
   }

   tempax = SiS_Pr->CCRT1CRTC[16] & 0xE0;
   SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x0E,0x1F,tempax);

   tempax = (SiS_Pr->CCRT1CRTC[16] & 0x01) << 5;
   if(modeflag & DoubleScanMode) tempax |= 0x80;
   SiS_SetRegANDOR(SiS_Pr->SiS_P3d4,0x09,0x5F,tempax);

}
