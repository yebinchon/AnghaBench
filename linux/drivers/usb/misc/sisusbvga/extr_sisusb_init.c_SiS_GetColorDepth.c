
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_4__ {unsigned short Ext_ModeFlag; } ;
struct TYPE_3__ {unsigned short St_ModeFlag; } ;


 unsigned short ModeEGA ;
 unsigned short ModeTypeMask ;

__attribute__((used)) static unsigned short
SiS_GetColorDepth(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
    unsigned short ModeIdIndex)
{
 static const unsigned short ColorDepth[6] = { 1, 2, 4, 4, 6, 8 };
 unsigned short modeflag;
 short index;

 if (ModeNo <= 0x13) {
  modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
 } else {
  modeflag = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
 }

 index = (modeflag & ModeTypeMask) - ModeEGA;
 if (index < 0)
  index = 0;
 return ColorDepth[index];
}
