
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned short SiS_CRT1Mode; int SiS_SetFlag; int SiS_VBInfo; int ChipType; scalar_t__ SiS_flag_clearbuffer; int SiS_P3cc; int SiS_P3c2; int SiS_P3c4; scalar_t__ SiS_SelectCRT2Rate; } ;


 int LowModeTests ;
 int ProgrammingCRT2 ;




 int SetCRT2ToLCDA ;
 int SetInSlaveMode ;
 int SetSimuScanMode ;
 int SiS_ClearBuffer (struct SiS_Private*,unsigned short) ;
 int SiS_ClearExt1Regs (struct SiS_Private*,unsigned short) ;
 int SiS_DisableBridge (struct SiS_Private*) ;
 int SiS_DisplayOn (struct SiS_Private*) ;
 unsigned short SiS_GetModePtr (struct SiS_Private*,unsigned short,unsigned short) ;
 unsigned short SiS_GetRatePtr (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetRegByte (int ) ;
 int SiS_LoadDAC (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_ResetCRT1VCLK (struct SiS_Private*) ;
 int SiS_ResetSegmentRegisters (struct SiS_Private*) ;
 int SiS_SetATTRegs (struct SiS_Private*,unsigned short) ;
 int SiS_SetCRT1CRTC (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRT1FIFO_300 (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetCRT1FIFO_310 (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetCRT1FIFO_630 (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetCRT1ModeRegs (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRT1Offset (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRT1Sync (struct SiS_Private*,unsigned short) ;
 int SiS_SetCRT1VCLK (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetCRTCRegs (struct SiS_Private*,unsigned short) ;
 int SiS_SetGRCRegs (struct SiS_Private*,unsigned short) ;
 int SiS_SetMiscRegs (struct SiS_Private*,unsigned short) ;
 int SiS_SetReg (int ,int,unsigned char) ;
 int SiS_SetRegByte (int ,int) ;
 int SiS_SetSeqRegs (struct SiS_Private*,unsigned short) ;
 int SiS_SetupDualChip (struct SiS_Private*) ;
 int SiS_WaitRetrace1 (struct SiS_Private*) ;
 int SwitchCRT2 ;
 int XGI_20 ;
 int XGI_40 ;

__attribute__((used)) static void
SiS_SetCRT1Group(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex)
{
   unsigned short StandTableIndex, RefreshRateTableIndex;

   SiS_Pr->SiS_CRT1Mode = ModeNo;

   StandTableIndex = SiS_GetModePtr(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      if(SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SwitchCRT2)) {
         SiS_DisableBridge(SiS_Pr);
      }
   }

   SiS_ResetSegmentRegisters(SiS_Pr);

   SiS_SetSeqRegs(SiS_Pr, StandTableIndex);
   SiS_SetMiscRegs(SiS_Pr, StandTableIndex);
   SiS_SetCRTCRegs(SiS_Pr, StandTableIndex);
   SiS_SetATTRegs(SiS_Pr, StandTableIndex);
   SiS_SetGRCRegs(SiS_Pr, StandTableIndex);
   SiS_ClearExt1Regs(SiS_Pr, ModeNo);
   SiS_ResetCRT1VCLK(SiS_Pr);

   SiS_Pr->SiS_SelectCRT2Rate = 0;
   SiS_Pr->SiS_SetFlag &= (~ProgrammingCRT2);

   if(SiS_Pr->SiS_VBInfo & SetSimuScanMode) {
      if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
         SiS_Pr->SiS_SetFlag |= ProgrammingCRT2;
      }
   }

   if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
      SiS_Pr->SiS_SetFlag |= ProgrammingCRT2;
   }

   RefreshRateTableIndex = SiS_GetRatePtr(SiS_Pr, ModeNo, ModeIdIndex);

   if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA)) {
      SiS_Pr->SiS_SetFlag &= ~ProgrammingCRT2;
   }

   if(RefreshRateTableIndex != 0xFFFF) {
      SiS_SetCRT1Sync(SiS_Pr, RefreshRateTableIndex);
      SiS_SetCRT1CRTC(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      SiS_SetCRT1Offset(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      SiS_SetCRT1VCLK(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
   }

   switch(SiS_Pr->ChipType) {
   default:
      break;
   }

   SiS_SetCRT1ModeRegs(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);







   SiS_LoadDAC(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->SiS_flag_clearbuffer) {
      SiS_ClearBuffer(SiS_Pr, ModeNo);
   }

   if(!(SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SwitchCRT2 | SetCRT2ToLCDA))) {
      SiS_WaitRetrace1(SiS_Pr);
      SiS_DisplayOn(SiS_Pr);
   }
}
