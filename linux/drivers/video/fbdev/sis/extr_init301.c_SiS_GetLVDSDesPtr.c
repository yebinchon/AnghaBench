
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBInfo; scalar_t__ ChipType; int SiS_LCDTypeInfo; scalar_t__ SiS_CustomT; int SiS_LCDInfo; struct SiS_LVDSDes* SiS_PanelType04_2b; struct SiS_LVDSDes* SiS_PanelType04_1b; struct SiS_LVDSDes* SiS_PanelType04_2a; struct SiS_LVDSDes* SiS_PanelType04_1a; } ;
struct SiS_LVDSDes {int dummy; } ;


 scalar_t__ CUT_BARCO1024 ;
 scalar_t__ CUT_BARCO1366 ;
 int DontExpandLCD ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToLCD ;

__attribute__((used)) static const struct SiS_LVDSDes *
SiS_GetLVDSDesPtr(struct SiS_Private *SiS_Pr)
{
   const struct SiS_LVDSDes *PanelDesPtr = ((void*)0);
   return PanelDesPtr;
}
