
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {unsigned char SiS_DDC_DeviceAddr; int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; int SiS_Part4Port; int SiS_DDC_Port; int SiS_P3d4; int SiS_P3c4; scalar_t__ SiS_DDC_SecAddr; scalar_t__ SiS_ChrontelInit; } ;


 int SIS_300_VGA ;
 unsigned char SiS_GetReg (int ,int) ;
 int SiS_SetupDDCN (struct SiS_Private*) ;
 unsigned int VB2_301 ;
 unsigned int VB2_30xBDH ;
 unsigned int VB2_LVDS ;
 unsigned int VB2_SISBRIDGE ;
 unsigned int VB2_SISTMDSBRIDGE ;

__attribute__((used)) static
unsigned short
SiS_InitDDCRegs(struct SiS_Private *SiS_Pr, unsigned int VBFlags, int VGAEngine,
                unsigned short adaptnum, unsigned short DDCdatatype, bool checkcr32,
  unsigned int VBFlags2)
{
     unsigned char ddcdtype[] = { 0xa0, 0xa0, 0xa0, 0xa2, 0xa6 };
     unsigned char flag, cr32;
     unsigned short temp = 0, myadaptnum = adaptnum;

     if(adaptnum != 0) {
 if(!(VBFlags2 & VB2_SISTMDSBRIDGE)) return 0xFFFF;
 if((VBFlags2 & VB2_30xBDH) && (adaptnum == 1)) return 0xFFFF;
     }



     SiS_Pr->SiS_ChrontelInit = 0;

     SiS_Pr->SiS_DDC_SecAddr = 0;
     SiS_Pr->SiS_DDC_DeviceAddr = ddcdtype[DDCdatatype];
     SiS_Pr->SiS_DDC_Port = SiS_Pr->SiS_P3c4;
     SiS_Pr->SiS_DDC_Index = 0x11;
     flag = 0xff;

     cr32 = SiS_GetReg(SiS_Pr->SiS_P3d4,0x32);
     if(VGAEngine == SIS_300_VGA) {

        if(myadaptnum != 0) {
    flag = 0;
    if(VBFlags2 & VB2_SISBRIDGE) {
       SiS_Pr->SiS_DDC_Port = SiS_Pr->SiS_Part4Port;
              SiS_Pr->SiS_DDC_Index = 0x0f;
    }
        }

 if(!(VBFlags2 & VB2_301)) {
    if((cr32 & 0x80) && (checkcr32)) {
              if(myadaptnum >= 1) {
          if(!(cr32 & 0x08)) {
       myadaptnum = 1;
       if(!(cr32 & 0x10)) return 0xFFFF;
                 }
       }
    }
 }

 temp = 4 - (myadaptnum * 2);
 if(flag) temp = 0;

     } else {



 if(VBFlags2 & VB2_SISBRIDGE) {
    if(myadaptnum == 2) {
       myadaptnum = 1;
    }
 }

        if(myadaptnum == 1) {
    flag = 0;
    if(VBFlags2 & VB2_SISBRIDGE) {
       SiS_Pr->SiS_DDC_Port = SiS_Pr->SiS_Part4Port;
              SiS_Pr->SiS_DDC_Index = 0x0f;
    }
        }

        if((cr32 & 0x80) && (checkcr32)) {
           if(myadaptnum >= 1) {
       if(!(cr32 & 0x08)) {
          myadaptnum = 1;
   if(!(cr32 & 0x10)) return 0xFFFF;
       }
    }
        }

        temp = myadaptnum;
        if(myadaptnum == 1) {
           temp = 0;
    if(VBFlags2 & VB2_LVDS) flag = 0xff;
        }

 if(flag) temp = 0;
    }

    SiS_Pr->SiS_DDC_Data = 0x02 << temp;
    SiS_Pr->SiS_DDC_Clk = 0x01 << temp;

    SiS_SetupDDCN(SiS_Pr);

    return 0;
}
