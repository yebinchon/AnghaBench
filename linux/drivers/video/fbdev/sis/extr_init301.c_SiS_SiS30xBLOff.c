
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_Part4Port; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int) ;
 int SiS_SetRegAND (int ,int,int) ;

void
SiS_SiS30xBLOff(struct SiS_Private *SiS_Pr)
{

  SiS_SetRegAND(SiS_Pr->SiS_Part4Port,0x26,0xFE);
  SiS_DDC2Delay(SiS_Pr,0xff00);
}
