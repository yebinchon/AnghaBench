
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_NData; int SiS_DDC_Index; int SiS_DDC_Port; int SiS_DDC_Data; } ;


 int SiS_SetRegANDOR (int ,int ,int ,int ) ;
 int SiS_SetSCLKHigh (struct SiS_Private*) ;
 int SiS_SetSCLKLow (struct SiS_Private*) ;

__attribute__((used)) static void
SiS_SendACK(struct SiS_Private *SiS_Pr, unsigned short yesno)
{
   SiS_SetSCLKLow(SiS_Pr);
   if(yesno) {
      SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
        SiS_Pr->SiS_DDC_Index,
        SiS_Pr->SiS_DDC_NData,
        SiS_Pr->SiS_DDC_Data);
   } else {
      SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
        SiS_Pr->SiS_DDC_Index,
        SiS_Pr->SiS_DDC_NData,
        0);
   }
   SiS_SetSCLKHigh(SiS_Pr);
}
