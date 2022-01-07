
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {unsigned short CSRClock; scalar_t__ ChipType; int SiS_P3c4; TYPE_1__* SiS_VCLKData; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {unsigned short CLOCK; } ;


 scalar_t__ SIS_315H ;
 scalar_t__ SIS_315PRO ;
 scalar_t__ SIS_540 ;
 scalar_t__ SIS_661 ;
 int SiS_GetReg (int ,int) ;
 unsigned short SiS_GetVCLK2Ptr (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,unsigned short) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,unsigned short) ;
 scalar_t__ XGI_20 ;

__attribute__((used)) static void
SiS_SetVCLKState(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short RefreshRateTableIndex, unsigned short ModeIdIndex)
{
   unsigned short data = 0, VCLK = 0, index = 0;

   if(ModeNo > 0x13) {
      if(SiS_Pr->UseCustomMode) {
         VCLK = SiS_Pr->CSRClock;
      } else {
         index = SiS_GetVCLK2Ptr(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
         VCLK = SiS_Pr->SiS_VCLKData[index].CLOCK;
      }
   }

   if(SiS_Pr->ChipType < SIS_315H) {
   } else if(SiS_Pr->ChipType < XGI_20) {
   } else {
   }


   if(SiS_Pr->ChipType >= SIS_661) {

      SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x07,0xE8,0x10);

   } else {

      data = 0x03;
      if(VCLK >= 260) data = 0x00;
      else if(VCLK >= 160) data = 0x01;
      else if(VCLK >= 135) data = 0x02;

      if(SiS_Pr->ChipType == SIS_540) {

         if (VCLK < 234) data = 0x02;
      }

      if(SiS_Pr->ChipType < SIS_315H) {
         SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x07,0xFC,data);
      } else {
         if(SiS_Pr->ChipType > SIS_315PRO) {
            if(ModeNo > 0x13) data &= 0xfc;
         }
         SiS_SetRegANDOR(SiS_Pr->SiS_P3c4,0x07,0xF8,data);
      }

   }
}
