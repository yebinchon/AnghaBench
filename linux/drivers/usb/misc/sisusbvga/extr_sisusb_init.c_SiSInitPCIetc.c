
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_SetReg (struct SiS_Private*,int ,int,int) ;
 int SiS_SetRegOR (struct SiS_Private*,int ,int,int) ;

__attribute__((used)) static void SiSInitPCIetc(struct SiS_Private *SiS_Pr)
{
 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x20, 0xa1);






 SiS_SetRegOR(SiS_Pr, SiS_Pr->SiS_P3c4, 0x1E, 0xDA);
}
