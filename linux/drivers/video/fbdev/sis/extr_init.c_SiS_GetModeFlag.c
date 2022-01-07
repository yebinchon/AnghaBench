
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned short CModeFlag; TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; scalar_t__ UseCustomMode; } ;
struct TYPE_4__ {unsigned short Ext_ModeFlag; } ;
struct TYPE_3__ {unsigned short St_ModeFlag; } ;



unsigned short
SiS_GetModeFlag(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex)
{
   if(SiS_Pr->UseCustomMode) {
      return SiS_Pr->CModeFlag;
   } else if(ModeNo <= 0x13) {
      return SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
   } else {
      return SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
   }
}
