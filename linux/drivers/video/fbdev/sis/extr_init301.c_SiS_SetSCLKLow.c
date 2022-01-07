
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_NClk; int SiS_DDC_Index; int SiS_DDC_Port; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int ) ;
 int SiS_I2CDELAYSHORT ;
 int SiS_SetRegANDOR (int ,int ,int ,int) ;

__attribute__((used)) static unsigned short
SiS_SetSCLKLow(struct SiS_Private *SiS_Pr)
{
  SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
    SiS_Pr->SiS_DDC_Index,
    SiS_Pr->SiS_DDC_NClk,
    0x00);
  SiS_DDC2Delay(SiS_Pr,SiS_I2CDELAYSHORT);
  return 0;
}
