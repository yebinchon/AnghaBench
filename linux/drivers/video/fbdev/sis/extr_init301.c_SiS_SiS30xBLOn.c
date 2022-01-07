
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_Part4Port; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int) ;
 int SiS_GetReg (int ,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int SiS_WaitVBRetrace (struct SiS_Private*) ;

void
SiS_SiS30xBLOn(struct SiS_Private *SiS_Pr)
{

  SiS_DDC2Delay(SiS_Pr,0xff00);
  if(!(SiS_GetReg(SiS_Pr->SiS_Part4Port,0x26) & 0x02)) {
     SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x26,0x02);
     SiS_WaitVBRetrace(SiS_Pr);
  }
  if(!(SiS_GetReg(SiS_Pr->SiS_Part4Port,0x26) & 0x01)) {
     SiS_SetRegOR(SiS_Pr->SiS_Part4Port,0x26,0x01);
  }
}
