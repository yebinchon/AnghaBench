
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {TYPE_1__* SiS_RefIndex; } ;
struct TYPE_2__ {unsigned short Ext_InfoFlag; unsigned short XRes; } ;


 unsigned short InterlaceMode ;
 unsigned short SiS_GetColorDepth (struct SiS_Private*,unsigned short,unsigned short) ;

__attribute__((used)) static unsigned short
SiS_GetOffset(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
       unsigned short ModeIdIndex, unsigned short rrti)
{
 unsigned short xres, temp, colordepth, infoflag;

 infoflag = SiS_Pr->SiS_RefIndex[rrti].Ext_InfoFlag;
 xres = SiS_Pr->SiS_RefIndex[rrti].XRes;

 colordepth = SiS_GetColorDepth(SiS_Pr, ModeNo, ModeIdIndex);

 temp = xres / 16;

 if (infoflag & InterlaceMode)
  temp <<= 1;

 temp *= colordepth;

 if (xres % 16)
  temp += (colordepth >> 1);

 return temp;
}
