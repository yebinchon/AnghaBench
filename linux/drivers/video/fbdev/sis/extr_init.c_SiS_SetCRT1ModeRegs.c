
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned char* VirtualRomBase; unsigned short CInfoFlag; scalar_t__ SiS_ModeType; scalar_t__ ChipType; unsigned short* SiS_SR15; int SiS_SysFlags; unsigned short CSRClock; int SiS_P3d4; int SiS_P3c4; TYPE_1__* SiS_VCLKData; scalar_t__ UseCustomMode; scalar_t__ SiS_UseROM; scalar_t__ SiS_ROMNew; TYPE_2__* SiS_RefIndex; } ;
struct TYPE_4__ {unsigned short Ext_InfoFlag; } ;
struct TYPE_3__ {unsigned short CLOCK; } ;


 unsigned short HalfDCLK ;
 unsigned short InterlaceMode ;
 unsigned short LineCompareOff ;
 scalar_t__ Mode16Bpp ;
 scalar_t__ ModeEGA ;
 scalar_t__ ModeText ;
 int ModeVGA ;
 int SF_760LFB ;
 scalar_t__ SIS_300 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_315PRO ;
 scalar_t__ SIS_330 ;
 scalar_t__ SIS_661 ;
 int SiS_Get310DRAMType (struct SiS_Private*) ;
 int SiS_GetColorDepth (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetMCLK (struct SiS_Private*) ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_GetOffset (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_GetReg (int ,int) ;
 unsigned short SiS_GetResInfo (struct SiS_Private*,unsigned short,unsigned short) ;
 unsigned short SiS_GetVCLK2Ptr (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_SetVCLKState (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 scalar_t__ XGI_20 ;
 scalar_t__ XGI_40 ;

__attribute__((used)) static void
SiS_SetCRT1ModeRegs(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex, unsigned short RRTI)
{
   unsigned short data, infoflag = 0, modeflag, resindex;





   modeflag = SiS_GetModeFlag(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->UseCustomMode) {
      infoflag = SiS_Pr->CInfoFlag;
   } else {
      resindex = SiS_GetResInfo(SiS_Pr, ModeNo, ModeIdIndex);
      if(ModeNo > 0x13) {
  infoflag = SiS_Pr->SiS_RefIndex[RRTI].Ext_InfoFlag;
      }
   }


   SiS_SetRegAND(SiS_Pr->SiS_P3c4,0x1F,0x3F);

   data = 0;
   if(ModeNo > 0x13) {
      if(SiS_Pr->SiS_ModeType > ModeEGA) {
         data |= 0x02;
         data |= ((SiS_Pr->SiS_ModeType - ModeVGA) << 2);
      }
      if(infoflag & InterlaceMode) data |= 0x20;
   }
   SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x06,0xC0,data);

   if(SiS_Pr->ChipType != SIS_300) {
      data = 0;
      if(infoflag & InterlaceMode) {

  int hrs = (SiS_GetReg(SiS_Pr->SiS_P3d4,0x04) |
      ((SiS_GetReg(SiS_Pr->SiS_P3c4,0x0b) & 0xc0) << 2)) - 3;
  int hto = (SiS_GetReg(SiS_Pr->SiS_P3d4,0x00) |
      ((SiS_GetReg(SiS_Pr->SiS_P3c4,0x0b) & 0x03) << 8)) + 5;
  data = hrs - (hto >> 1) + 3;
      }
      SiS_SetReg(SiS_Pr->SiS_P3d4,0x19,data);
      SiS_SetRegANDOR(SiS_Pr->SiS_P3d4,0x1a,0xFC,((data >> 8) & 0x03));
   }

   if(modeflag & HalfDCLK) {
      SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x01,0x08);
   }

   data = 0;
   if(modeflag & LineCompareOff) data = 0x08;
   if(SiS_Pr->ChipType == SIS_300) {
      SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x0F,0xF7,data);
   } else {
      if(SiS_Pr->ChipType >= XGI_20) data |= 0x20;
      if(SiS_Pr->SiS_ModeType == ModeEGA) {
  if(ModeNo > 0x13) {
     data |= 0x40;
  }
      }
      SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x0F,0xB7,data);
   }
   data = 0x60;
   if(SiS_Pr->SiS_ModeType != ModeText) {
      data ^= 0x60;
      if(SiS_Pr->SiS_ModeType != ModeEGA) {
         data ^= 0xA0;
      }
   }
   SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x21,0x1F,data);

   SiS_SetVCLKState(SiS_Pr, ModeNo, RRTI, ModeIdIndex);
}
