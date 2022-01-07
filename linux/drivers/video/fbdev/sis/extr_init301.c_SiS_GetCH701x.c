
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; int SiS_DDC_DeviceAddr; unsigned short SiS_DDC_ReadAddr; } ;


 unsigned short SiS_GetChReg (struct SiS_Private*,int ) ;
 int SiS_SetupDDCN (struct SiS_Private*) ;

unsigned short
SiS_GetCH701x(struct SiS_Private *SiS_Pr, unsigned short tempbx)
{
  SiS_Pr->SiS_DDC_Index = 0x11;
  SiS_Pr->SiS_DDC_Data = 0x08;
  SiS_Pr->SiS_DDC_Clk = 0x04;
  SiS_SetupDDCN(SiS_Pr);
  SiS_Pr->SiS_DDC_DeviceAddr = 0xEA;

  SiS_Pr->SiS_DDC_ReadAddr = tempbx;

  return SiS_GetChReg(SiS_Pr,0);
}
