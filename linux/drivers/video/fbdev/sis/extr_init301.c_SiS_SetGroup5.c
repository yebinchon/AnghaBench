
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBInfo; scalar_t__ SiS_ModeType; int SiS_P3c4; } ;


 int LoadDACFlag ;
 scalar_t__ ModeVGA ;
 int SetCRT2ToLCDA ;
 int SetInSlaveMode ;
 int SiS_LoadDAC (struct SiS_Private*,unsigned short,unsigned short) ;
 int SiS_SetRegOR (int ,int,int) ;

__attribute__((used)) static void
SiS_SetGroup5(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex)
{

  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) return;

  if(SiS_Pr->SiS_ModeType == ModeVGA) {
     if(!(SiS_Pr->SiS_VBInfo & (SetInSlaveMode | LoadDACFlag))) {
        SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x1E,0x20);
        SiS_LoadDAC(SiS_Pr, ModeNo, ModeIdIndex);
     }
  }
}
