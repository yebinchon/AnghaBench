
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3d4; } ;


 int SetInSlaveMode ;
 unsigned short SiS_GetReg (int ,int) ;

__attribute__((used)) static bool
SiS_BridgeInSlavemode(struct SiS_Private *SiS_Pr)
{
   unsigned short flag1;

   flag1 = SiS_GetReg(SiS_Pr->SiS_P3d4,0x31);
   if(flag1 & (SetInSlaveMode >> 8)) return 1;
   return 0;
}
