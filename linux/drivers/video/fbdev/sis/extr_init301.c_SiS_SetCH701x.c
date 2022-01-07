
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; int SiS_DDC_DeviceAddr; } ;


 int SiS_SetChReg (struct SiS_Private*,unsigned short,unsigned char,int ) ;
 int SiS_SetupDDCN (struct SiS_Private*) ;

void
SiS_SetCH701x(struct SiS_Private *SiS_Pr, unsigned short reg, unsigned char val)
{
  SiS_Pr->SiS_DDC_Index = 0x11;
  SiS_Pr->SiS_DDC_Data = 0x08;
  SiS_Pr->SiS_DDC_Clk = 0x04;
  SiS_SetupDDCN(SiS_Pr);
  SiS_Pr->SiS_DDC_DeviceAddr = 0xEA;
  SiS_SetChReg(SiS_Pr, reg, val, 0);
}
