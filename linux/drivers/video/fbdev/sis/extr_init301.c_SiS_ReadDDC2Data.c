
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned short SiS_DDC_Data; int SiS_DDC_Index; int SiS_DDC_Port; int SiS_DDC_NData; } ;


 unsigned short SiS_GetReg (int ,int ) ;
 int SiS_SetRegANDOR (int ,int ,int ,unsigned short) ;
 int SiS_SetSCLKHigh (struct SiS_Private*) ;
 int SiS_SetSCLKLow (struct SiS_Private*) ;

__attribute__((used)) static unsigned short
SiS_ReadDDC2Data(struct SiS_Private *SiS_Pr)
{
  unsigned short i, temp, getdata;

  getdata = 0;
  for(i = 0; i < 8; i++) {
    getdata <<= 1;
    SiS_SetSCLKLow(SiS_Pr);
    SiS_SetRegANDOR(SiS_Pr->SiS_DDC_Port,
      SiS_Pr->SiS_DDC_Index,
      SiS_Pr->SiS_DDC_NData,
      SiS_Pr->SiS_DDC_Data);
    SiS_SetSCLKHigh(SiS_Pr);
    temp = SiS_GetReg(SiS_Pr->SiS_DDC_Port,SiS_Pr->SiS_DDC_Index);
    if(temp & SiS_Pr->SiS_DDC_Data) getdata |= 0x01;
  }
  return getdata;
}
