
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {int SiS_P3c4; TYPE_2__* SiS_VCLKData; TYPE_1__* SiS_RefIndex; } ;
struct TYPE_4__ {unsigned short SR2B; unsigned short SR2C; } ;
struct TYPE_3__ {unsigned short Ext_CRTVCLK; } ;


 int SiS_SetReg (struct SiS_Private*,int ,int,int) ;
 int SiS_SetRegAND (struct SiS_Private*,int ,int,int) ;

__attribute__((used)) static void
SiS_SetCRT1VCLK(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short rrti)
{
 unsigned short index = SiS_Pr->SiS_RefIndex[rrti].Ext_CRTVCLK;
 unsigned short clka = SiS_Pr->SiS_VCLKData[index].SR2B;
 unsigned short clkb = SiS_Pr->SiS_VCLKData[index].SR2C;

 SiS_SetRegAND(SiS_Pr, SiS_Pr->SiS_P3c4, 0x31, 0xCF);

 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x2B, clka);
 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x2C, clkb);
 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x2D, 0x01);
}
