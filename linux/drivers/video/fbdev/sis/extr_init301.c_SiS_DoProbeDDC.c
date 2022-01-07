
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_DDC_DeviceAddr; } ;


 scalar_t__ SiS_PrepareDDC (struct SiS_Private*) ;
 scalar_t__ SiS_ReadDDC2Data (struct SiS_Private*) ;
 int SiS_SendACK (struct SiS_Private*,int) ;
 int SiS_SetStop (struct SiS_Private*) ;
 int SiS_SetSwitchDDC2 (struct SiS_Private*) ;

__attribute__((used)) static unsigned short
SiS_DoProbeDDC(struct SiS_Private *SiS_Pr)
{
    unsigned char mask, value;
    unsigned short temp, ret=0;
    bool failed = 0;

    SiS_SetSwitchDDC2(SiS_Pr);
    if(SiS_PrepareDDC(SiS_Pr)) {
         SiS_SetStop(SiS_Pr);
         return 0xFFFF;
    }
    mask = 0xf0;
    value = 0x20;
    if(SiS_Pr->SiS_DDC_DeviceAddr == 0xa0) {
       temp = (unsigned char)SiS_ReadDDC2Data(SiS_Pr);
       SiS_SendACK(SiS_Pr, 0);
       if(temp == 0) {
           mask = 0xff;
    value = 0xff;
       } else {
           failed = 1;
    ret = 0xFFFF;
       }
    }
    if(!failed) {
       temp = (unsigned char)SiS_ReadDDC2Data(SiS_Pr);
       SiS_SendACK(SiS_Pr, 1);
       temp &= mask;
       if(temp == value) ret = 0;
       else {
          ret = 0xFFFF;
          if(SiS_Pr->SiS_DDC_DeviceAddr == 0xa0) {
             if(temp == 0x30) ret = 0;
          }
       }
    }
    SiS_SetStop(SiS_Pr);
    return ret;
}
