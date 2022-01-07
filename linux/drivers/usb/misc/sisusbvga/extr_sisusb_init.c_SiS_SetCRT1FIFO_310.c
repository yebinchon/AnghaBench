
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_P3c4; TYPE_1__* SiS_EModeIDTable; } ;
struct TYPE_2__ {unsigned short Ext_ModeFlag; } ;


 unsigned short DoubleScanMode ;
 unsigned short HalfDCLK ;
 int SiS_SetReg (struct SiS_Private*,int ,int,int) ;
 int SiS_SetRegAND (struct SiS_Private*,int ,int,int) ;
 int SiS_SetRegOR (struct SiS_Private*,int ,int,int) ;

__attribute__((used)) static void
SiS_SetCRT1FIFO_310(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
      unsigned short mi)
{
 unsigned short modeflag = SiS_Pr->SiS_EModeIDTable[mi].Ext_ModeFlag;


 SiS_SetRegAND(SiS_Pr, SiS_Pr->SiS_P3c4, 0x3D, 0xFE);

 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x08, 0xAE);
 SiS_SetRegAND(SiS_Pr, SiS_Pr->SiS_P3c4, 0x09, 0xF0);

 if (ModeNo <= 0x13)
  return;

 if ((!(modeflag & DoubleScanMode)) || (!(modeflag & HalfDCLK))) {
  SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x08, 0x34);
  SiS_SetRegOR(SiS_Pr, SiS_Pr->SiS_P3c4, 0x3D, 0x01);
 }
}
