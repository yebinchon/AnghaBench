
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned short SiS_DDC_Clk; int SiS_DDC_Index; int SiS_DDC_Port; int SiS_DDC_NClk; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int ) ;
 unsigned short SiS_GetReg (int ,int ) ;
 int SiS_I2CDELAYSHORT ;
 int SiS_SetRegANDOR (int ,int ,int ,unsigned short) ;

__attribute__((used)) static unsigned short
SiS_SetSCLKHigh(struct SiS_Private *SiS_Pr)
{
  unsigned short temp, watchdog=1000;

  SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
    SiS_Pr->SiS_DDC_Index,
    SiS_Pr->SiS_DDC_NClk,
    SiS_Pr->SiS_DDC_Clk);
  do {
    temp = SiS_GetReg(SiS_Pr->SiS_DDC_Port,SiS_Pr->SiS_DDC_Index);
  } while((!(temp & SiS_Pr->SiS_DDC_Clk)) && --watchdog);
  if (!watchdog) {
   return 0xFFFF;
  }
  SiS_DDC2Delay(SiS_Pr,SiS_I2CDELAYSHORT);
  return 0;
}
