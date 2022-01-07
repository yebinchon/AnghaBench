
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_Data; int SiS_DDC_NData; int SiS_DDC_Index; int SiS_DDC_Port; } ;


 unsigned short SiS_CheckACK (struct SiS_Private*) ;
 int SiS_SetRegANDOR (int ,int ,int ,int) ;
 int SiS_SetSCLKHigh (struct SiS_Private*) ;
 int SiS_SetSCLKLow (struct SiS_Private*) ;

__attribute__((used)) static unsigned short
SiS_WriteDDC2Data(struct SiS_Private *SiS_Pr, unsigned short tempax)
{
  unsigned short i,flag,temp;

  flag = 0x80;
  for(i = 0; i < 8; i++) {
    SiS_SetSCLKLow(SiS_Pr);
    if(tempax & flag) {
      SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
        SiS_Pr->SiS_DDC_Index,
        SiS_Pr->SiS_DDC_NData,
        SiS_Pr->SiS_DDC_Data);
    } else {
      SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
        SiS_Pr->SiS_DDC_Index,
        SiS_Pr->SiS_DDC_NData,
        0x00);
    }
    SiS_SetSCLKHigh(SiS_Pr);
    flag >>= 1;
  }
  temp = SiS_CheckACK(SiS_Pr);
  return temp;
}
