
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_SetRegOR (int ,int,int) ;

void
SiS_DisplayOff(struct SiS_Private *SiS_Pr)
{
   SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x01,0x20);
}
