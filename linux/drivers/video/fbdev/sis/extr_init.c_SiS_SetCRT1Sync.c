
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int CInfoFlag; int SiS_P3c2; TYPE_1__* SiS_RefIndex; scalar_t__ UseCustomMode; } ;
struct TYPE_2__ {int Ext_InfoFlag; } ;


 int SiS_SetRegByte (int ,unsigned short) ;

__attribute__((used)) static void
SiS_SetCRT1Sync(struct SiS_Private *SiS_Pr, unsigned short RRTI)
{
   unsigned short sync;

   if(SiS_Pr->UseCustomMode) {
      sync = SiS_Pr->CInfoFlag >> 8;
   } else {
      sync = SiS_Pr->SiS_RefIndex[RRTI].Ext_InfoFlag >> 8;
   }

   sync &= 0xC0;
   sync |= 0x2f;
   SiS_SetRegByte(SiS_Pr->SiS_P3c2,sync);
}
