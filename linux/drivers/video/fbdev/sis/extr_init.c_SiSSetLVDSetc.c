
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_IF_DEF_LVDS; int SiS_IF_DEF_TRUMPION; int SiS_IF_DEF_CH70xx; int SiS_IF_DEF_CONEX; int ChipType; int SiS_P3d4; int SiS_Backup70xx; int SiS_Part4Port; scalar_t__ SiS_ChrontelInit; } ;
 int SiS_GetCH700x (struct SiS_Private*,int) ;
 int SiS_GetReg (int ,int) ;



__attribute__((used)) static
void
SiSSetLVDSetc(struct SiS_Private *SiS_Pr)
{
   unsigned short temp;

   SiS_Pr->SiS_IF_DEF_LVDS = 0;
   SiS_Pr->SiS_IF_DEF_TRUMPION = 0;
   SiS_Pr->SiS_IF_DEF_CH70xx = 0;
   SiS_Pr->SiS_IF_DEF_CONEX = 0;

   SiS_Pr->SiS_ChrontelInit = 0;

   if(SiS_Pr->ChipType == 129) return;


   temp = SiS_GetReg(SiS_Pr->SiS_Part4Port,0x00);
   if((temp == 1) || (temp == 2)) return;

   switch(SiS_Pr->ChipType) {
   default:
 break;
   }
}
