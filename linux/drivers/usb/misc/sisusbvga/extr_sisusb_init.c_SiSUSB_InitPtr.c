
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VCLKData; int SiS_CRT1Table; int SiS_RefIndex; int SiS_EModeIDTable; int SiS_SModeIDTable; int SiS_StandTable; int SiS_ModeResInfo; } ;


 int SiSUSB_CRT1Table ;
 int SiSUSB_EModeIDTable ;
 int SiSUSB_ModeResInfo ;
 int SiSUSB_RefIndex ;
 int SiSUSB_SModeIDTable ;
 int SiSUSB_StandTable ;
 int SiSUSB_VCLKData ;

__attribute__((used)) static void SiSUSB_InitPtr(struct SiS_Private *SiS_Pr)
{
 SiS_Pr->SiS_ModeResInfo = SiSUSB_ModeResInfo;
 SiS_Pr->SiS_StandTable = SiSUSB_StandTable;

 SiS_Pr->SiS_SModeIDTable = SiSUSB_SModeIDTable;
 SiS_Pr->SiS_EModeIDTable = SiSUSB_EModeIDTable;
 SiS_Pr->SiS_RefIndex = SiSUSB_RefIndex;
 SiS_Pr->SiS_CRT1Table = SiSUSB_CRT1Table;

 SiS_Pr->SiS_VCLKData = SiSUSB_VCLKData;
}
