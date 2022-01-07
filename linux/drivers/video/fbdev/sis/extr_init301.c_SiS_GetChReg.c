
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_DeviceAddr; unsigned short SiS_DDC_ReadAddr; int SiS_ChrontelInit; } ;


 int SiS_DDC2Delay (struct SiS_Private*,int) ;
 int SiS_I2CDELAYSHORT ;
 unsigned short SiS_ReadDDC2Data (struct SiS_Private*) ;
 scalar_t__ SiS_SetStart (struct SiS_Private*) ;
 scalar_t__ SiS_SetStop (struct SiS_Private*) ;
 unsigned short SiS_WriteDDC2Data (struct SiS_Private*,int) ;

__attribute__((used)) static unsigned short
SiS_GetChReg(struct SiS_Private *SiS_Pr, unsigned short myor)
{
  unsigned short tempah, temp, i;

  for(i=0; i<20; i++) {
     if(i) {
 SiS_SetStop(SiS_Pr);
 SiS_DDC2Delay(SiS_Pr,SiS_I2CDELAYSHORT * 4);
     }
     if(SiS_SetStart(SiS_Pr)) continue;
     temp = SiS_WriteDDC2Data(SiS_Pr,SiS_Pr->SiS_DDC_DeviceAddr);
     if(temp) continue;
     temp = SiS_WriteDDC2Data(SiS_Pr,SiS_Pr->SiS_DDC_ReadAddr | myor);
     if(temp) continue;
     if (SiS_SetStart(SiS_Pr)) continue;
     temp = SiS_WriteDDC2Data(SiS_Pr,SiS_Pr->SiS_DDC_DeviceAddr | 0x01);
     if(temp) continue;
     tempah = SiS_ReadDDC2Data(SiS_Pr);
     if(SiS_SetStop(SiS_Pr)) continue;
     SiS_Pr->SiS_ChrontelInit = 1;
     return tempah;
  }
  return 0xFFFF;
}
