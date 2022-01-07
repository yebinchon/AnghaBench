
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_Part1Port; } ;


 scalar_t__ SIS_315H ;
 unsigned short SiS_GetReg (int ,int) ;
 scalar_t__ SiS_HaveBridge (struct SiS_Private*) ;

__attribute__((used)) static bool
SiS_BridgeIsEnabled(struct SiS_Private *SiS_Pr)
{
   unsigned short flag;

   if(SiS_HaveBridge(SiS_Pr)) {
      flag = SiS_GetReg(SiS_Pr->SiS_Part1Port,0x00);
      if(SiS_Pr->ChipType < SIS_315H) {
 flag &= 0xa0;
 if((flag == 0x80) || (flag == 0x20)) return 1;
      } else {
 flag &= 0x50;
 if((flag == 0x40) || (flag == 0x10)) return 1;
      }
   }
   return 0;
}
