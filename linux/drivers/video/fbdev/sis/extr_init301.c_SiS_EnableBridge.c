
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBType; scalar_t__ ChipType; scalar_t__ SiS_CustomT; unsigned char* VirtualRomBase; int EMI_30; unsigned char EMI_31; unsigned short SiS_EMIOffset; unsigned char EMI_32; unsigned char EMI_33; int HaveEMI; int HaveEMILCD; int OverruleEMI; int SiS_IF_DEF_CH70xx; int SiS_Part1Port; int SiS_P3c4; int SiS_Part2Port; int SiS_P3d4; int SiS_P3c6; int SiS_Part4Port; scalar_t__ SiS_ROMNew; } ;


 scalar_t__ CUT_ASUSA2H_2 ;
 scalar_t__ CUT_CLEVO1024 ;
 scalar_t__ CUT_CLEVO1400 ;
 scalar_t__ CUT_COMPAL1400_2 ;
 scalar_t__ CUT_COMPAQ1280 ;
 unsigned short GetLCDStructPtr661_2 (struct SiS_Private*) ;
 scalar_t__ IS_SIS740 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_550 ;
 scalar_t__ SIS_730 ;
 scalar_t__ SIS_740 ;
 unsigned short SetCRT2ToRAMDAC ;
 scalar_t__ SiS_BridgeInSlavemode (struct SiS_Private*) ;
 int SiS_CR36BIOSWord23b (struct SiS_Private*) ;
 int SiS_CR36BIOSWord23d (struct SiS_Private*) ;
 scalar_t__ SiS_CRT2IsLCD (struct SiS_Private*) ;
 int SiS_Chrontel701xBLOff (struct SiS_Private*) ;
 int SiS_Chrontel701xBLOn (struct SiS_Private*) ;
 int SiS_Chrontel701xOn (struct SiS_Private*) ;
 int SiS_ChrontelDoSomething1 (struct SiS_Private*) ;
 int SiS_ChrontelInitTVVSync (struct SiS_Private*) ;
 int SiS_DisplayOff (struct SiS_Private*) ;
 int SiS_DisplayOn (struct SiS_Private*) ;
 int SiS_GenericDelay (struct SiS_Private*,int) ;
 unsigned short SiS_GetCH701x (struct SiS_Private*,int) ;
 int SiS_GetReg (int ,int) ;
 int SiS_HandlePWD (struct SiS_Private*) ;
 scalar_t__ SiS_IsDualEdge (struct SiS_Private*) ;
 scalar_t__ SiS_IsLCDOrLCDA (struct SiS_Private*) ;
 int SiS_IsNotM650orLater (struct SiS_Private*) ;
 scalar_t__ SiS_IsTVOrYPbPrOrScart (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAMode (struct SiS_Private*) ;
 scalar_t__ SiS_IsVAorLCD (struct SiS_Private*) ;
 scalar_t__ SiS_LCDAEnabled (struct SiS_Private*) ;
 int SiS_PanelDelay (struct SiS_Private*,int) ;
 int SiS_PanelDelayLoop (struct SiS_Private*,int,int) ;
 int SiS_SetCH700x (struct SiS_Private*,int,int) ;
 int SiS_SetReg (int ,int,unsigned short) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int SiS_SetRegByte (int ,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_SetRegSR11ANDOR (struct SiS_Private*,int,int) ;
 scalar_t__ SiS_TVEnabled (struct SiS_Private*) ;
 int SiS_UnLockCRT2 (struct SiS_Private*) ;
 int SiS_VBLongWait (struct SiS_Private*) ;
 int SiS_WaitVBRetrace (struct SiS_Private*) ;
 int SiS_WeHaveBacklightCtrl (struct SiS_Private*) ;
 int VB_NoLCD ;
 int VB_SIS30xBLV ;
 int VB_SISEMI ;
 int VB_SISLVDS ;
 int VB_SISPOWER ;
 int VB_SISVB ;

__attribute__((used)) static
void
SiS_EnableBridge(struct SiS_Private *SiS_Pr)
{
  unsigned short temp=0, tempah;





  if(SiS_Pr->SiS_VBType & VB_SISVB) {

    if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {

      if(SiS_Pr->ChipType < SIS_315H) {
      } else {
      }

    } else {

       if(SiS_Pr->ChipType < SIS_315H) {
   if(SiS_CRT2IsLCD(SiS_Pr)) {
      SiS_SetRegSR11ANDOR(SiS_Pr,0xFB,0x00);
      SiS_PanelDelay(SiS_Pr, 0);
   }
       }

       temp = SiS_GetReg(SiS_Pr->SiS_P3c4,0x32) & 0xDF;
       if(SiS_BridgeInSlavemode(SiS_Pr)) {
   tempah = SiS_GetReg(SiS_Pr->SiS_P3d4,0x30);
   if(!(tempah & SetCRT2ToRAMDAC)) temp |= 0x20;
       }
       SiS_SetReg(SiS_Pr->SiS_P3c4,0x32,temp);

       SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x1E,0x20);

       if(SiS_Pr->ChipType >= SIS_315H) {
   temp = SiS_GetReg(SiS_Pr->SiS_Part1Port,0x2E);
   if(!(temp & 0x80)) {
      SiS_SetRegOR(SiS_Pr->SiS_Part1Port,0x2E,0x80);
   }
       }

       SiS_SetRegANDOR(SiS_Pr->SiS_Part2Port,0x00,0x1F,0x20);

       SiS_VBLongWait(SiS_Pr);
       SiS_DisplayOn(SiS_Pr);
       if(SiS_Pr->ChipType >= SIS_315H) {
   SiS_SetRegAND(SiS_Pr->SiS_Part1Port,0x00,0x7f);
       }
       SiS_VBLongWait(SiS_Pr);

       if(SiS_Pr->ChipType < SIS_315H) {
   if(SiS_CRT2IsLCD(SiS_Pr)) {
      SiS_PanelDelay(SiS_Pr, 1);
      SiS_SetRegSR11ANDOR(SiS_Pr,0xF7,0x00);
   }
       }

    }

  } else {

    if(SiS_Pr->ChipType < SIS_315H) {
    } else {
    }

  }

}
