
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int curr_bandwidth; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int BIT (int) ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;


 int RF_CHNLBW ;
 int RF_PATH_A ;
 int bCCKSideBand ;
 int bMaskDWord ;
 int bRFMOD ;
 int r8712_read8 (struct _adapter*,int) ;
 int r8712_write8 (struct _adapter*,int,int) ;
 int rCCK0_System ;
 int rFPGA0_AnalogParameter2 ;
 int rFPGA0_RFMOD ;
 int rFPGA1_RFMOD ;
 int rOFDM1_LSTF ;
 int set_bb_reg (struct _adapter*,int ,int,int) ;
 int set_rf_reg (struct _adapter*,int ,int ,int,int) ;

void r8712_SwitchBandwidth(struct _adapter *pAdapter)
{

 u8 regBwOpMode = 0;
 u8 Bandwidth = pAdapter->mppriv.curr_bandwidth;

 regBwOpMode = r8712_read8(pAdapter, 0x10250203);
 if (Bandwidth == 129)
  regBwOpMode |= BIT(2);
 else
  regBwOpMode &= ~(BIT(2));
 r8712_write8(pAdapter, 0x10250203, regBwOpMode);

 switch (Bandwidth) {

 case 129:
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bRFMOD, 0x0);
  set_bb_reg(pAdapter, rFPGA1_RFMOD, bRFMOD, 0x0);




  set_bb_reg(pAdapter, rFPGA0_AnalogParameter2, bMaskDWord, 0x58);
  break;

 case 128:
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bRFMOD, 0x1);
  set_bb_reg(pAdapter, rFPGA1_RFMOD, bRFMOD, 0x1);





  set_bb_reg(pAdapter, rCCK0_System, bCCKSideBand,
      (HAL_PRIME_CHNL_OFFSET_DONT_CARE >> 1));
  set_bb_reg(pAdapter, rOFDM1_LSTF, 0xC00,
      HAL_PRIME_CHNL_OFFSET_DONT_CARE);
  set_bb_reg(pAdapter, rFPGA0_AnalogParameter2, bMaskDWord, 0x18);
  break;
 default:
  break;
 }


 switch (Bandwidth) {
 case 129:
  set_rf_reg(pAdapter, RF_PATH_A, RF_CHNLBW,
      BIT(10) | BIT(11), 0x01);
  break;
 case 128:
  set_rf_reg(pAdapter, RF_PATH_A, RF_CHNLBW,
      BIT(10) | BIT(11), 0x00);
  break;
 default:
  break;
 }
}
