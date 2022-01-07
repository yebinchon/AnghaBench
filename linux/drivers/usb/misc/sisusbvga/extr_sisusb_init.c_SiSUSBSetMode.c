
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {unsigned long IOAddress; int SiS_ModeType; int SiS_P3d4; int SiS_P3c6; int SiS_SetFlag; TYPE_1__* SiS_EModeIDTable; int SiS_P3c4; } ;
struct TYPE_2__ {int Ext_ModeFlag; } ;


 int LowModeTests ;
 int ModeTypeMask ;
 int SiSInitPCIetc (struct SiS_Private*) ;
 int SiSUSBRegInit (struct SiS_Private*,unsigned long) ;
 int SiSUSB_InitPtr (struct SiS_Private*) ;
 int SiS_DisplayOn (struct SiS_Private*) ;
 int SiS_GetSysFlags (struct SiS_Private*) ;
 int SiS_HandleCRT1 (struct SiS_Private*) ;
 int SiS_SearchModeID (struct SiS_Private*,unsigned short*,unsigned short*) ;
 int SiS_SetCRT1Group (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetReg (struct SiS_Private*,int ,int,unsigned short) ;
 int SiS_SetRegByte (struct SiS_Private*,int ,int) ;

int SiSUSBSetMode(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
 unsigned short ModeIdIndex;
 unsigned long BaseAddr = SiS_Pr->IOAddress;

 SiSUSB_InitPtr(SiS_Pr);
 SiSUSBRegInit(SiS_Pr, BaseAddr);
 SiS_GetSysFlags(SiS_Pr);

 if (!(SiS_SearchModeID(SiS_Pr, &ModeNo, &ModeIdIndex)))
  return 0;

 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x05, 0x86);

 SiSInitPCIetc(SiS_Pr);

 ModeNo &= 0x7f;

 SiS_Pr->SiS_ModeType =
     SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;

 SiS_Pr->SiS_SetFlag = LowModeTests;


 SiS_SetCRT1Group(SiS_Pr, ModeNo, ModeIdIndex);

 SiS_HandleCRT1(SiS_Pr);

 SiS_DisplayOn(SiS_Pr);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3c6, 0xFF);


 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3d4, 0x34, ModeNo);

 return 1;
}
