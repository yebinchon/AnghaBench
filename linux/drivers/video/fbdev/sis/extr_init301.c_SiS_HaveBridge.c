
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_IF_DEF_LVDS; int SiS_VBType; int SiS_Part4Port; } ;


 unsigned short SiS_GetReg (int ,int) ;
 int VB_SISVB ;

__attribute__((used)) static bool
SiS_HaveBridge(struct SiS_Private *SiS_Pr)
{
   unsigned short flag;

   if(SiS_Pr->SiS_IF_DEF_LVDS == 1) {
      return 1;
   } else if(SiS_Pr->SiS_VBType & VB_SISVB) {
      flag = SiS_GetReg(SiS_Pr->SiS_Part4Port,0x00);
      if((flag == 1) || (flag == 2)) return 1;
   }
   return 0;
}
