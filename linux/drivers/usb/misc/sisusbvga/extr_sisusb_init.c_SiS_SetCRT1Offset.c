
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_P3c4; int SiS_P3d4; TYPE_1__* SiS_RefIndex; } ;
struct TYPE_2__ {unsigned short Ext_InfoFlag; } ;


 unsigned short InterlaceMode ;
 unsigned short SiS_GetOffset (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (struct SiS_Private*,int ,int,unsigned short) ;
 int SiS_SetRegANDOR (struct SiS_Private*,int ,int,int,unsigned short) ;

__attribute__((used)) static void
SiS_SetCRT1Offset(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
    unsigned short ModeIdIndex, unsigned short rrti)
{
 unsigned short du = SiS_GetOffset(SiS_Pr, ModeNo, ModeIdIndex, rrti);
 unsigned short infoflag = SiS_Pr->SiS_RefIndex[rrti].Ext_InfoFlag;
 unsigned short temp;

 temp = (du >> 8) & 0x0f;
 SiS_SetRegANDOR(SiS_Pr, SiS_Pr->SiS_P3c4, 0x0E, 0xF0, temp);

 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3d4, 0x13, (du & 0xFF));

 if (infoflag & InterlaceMode)
  du >>= 1;

 du <<= 5;
 temp = (du >> 8) & 0xff;
 if (du & 0xff)
  temp++;
 temp++;
 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x10, temp);
}
