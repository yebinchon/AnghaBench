
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_SetFlag; int SiS_VGAVDE; scalar_t__ SiS_ModeType; int SiS_VBType; int SiS_VBInfo; scalar_t__ SiS_LCDResInfo; int SiS_PanelXRes; int SiS_PanelYRes; int SiS_HDE; int SiS_VDE; int SiS_Part2Port; } ;


 int LCDVESATiming ;
 scalar_t__ ModeVGA ;
 scalar_t__ Panel_1400x1050 ;
 int SetCRT2ToLCD ;
 int SetSimuScanMode ;
 int SiS_Part2Port ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int VB_SIS30xB ;
 int VB_SIS30xBLV ;

__attribute__((used)) static void
SiS_SetGroup2_Tail(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
  unsigned short temp;

  if(!(SiS_Pr->SiS_SetFlag & LCDVESATiming)) {
     if(SiS_Pr->SiS_VGAVDE == 525) {
 temp = 0xc3;
 if(SiS_Pr->SiS_ModeType <= ModeVGA) {
    temp++;
    if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) temp += 2;
 }
 SiS_SetReg(SiS_Pr->SiS_Part2Port,0x2f,temp);
 SiS_SetReg(SiS_Pr->SiS_Part2Port,0x30,0xb3);
     } else if(SiS_Pr->SiS_VGAVDE == 420) {
 temp = 0x4d;
 if(SiS_Pr->SiS_ModeType <= ModeVGA) {
    temp++;
    if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) temp++;
 }
 SiS_SetReg(SiS_Pr->SiS_Part2Port,0x2f,temp);
     }
  }

  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {
     if(SiS_Pr->SiS_LCDResInfo == Panel_1400x1050) {
 if(SiS_Pr->SiS_VBType & VB_SIS30xB) {
    SiS_SetRegOR(SiS_Pr->SiS_Part2Port,0x1a,0x03);

 }
 temp = 1;
 if(ModeNo <= 0x13) temp = 3;
 SiS_SetReg(SiS_Pr->SiS_Part2Port,0x0b,temp);
     }
  }
}
