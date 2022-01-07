
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_data_8188e {int CurrentChannelBW; int nCur40MhzPrimeSC; } ;
struct adapter {scalar_t__ bDriverStopped; struct hal_data_8188e* HalData; } ;


 int BIT (int) ;
 int BW_OPMODE_20MHZ ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;


 scalar_t__ REG_BWOPMODE ;
 scalar_t__ REG_RRSR ;
 int bCCKSideBand ;
 int bRFMOD ;
 int phy_set_bb_reg (struct adapter*,int,int,int) ;
 int rCCK0_System ;
 int rFPGA0_RFMOD ;
 int rFPGA1_RFMOD ;
 int rOFDM1_LSTF ;
 int rtl88eu_phy_rf6052_set_bandwidth (struct adapter*,int) ;
 int usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void phy_set_bw_mode_callback(struct adapter *adapt)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 u8 reg_bw_opmode;
 u8 reg_prsr_rsc;

 if (adapt->bDriverStopped)
  return;



 reg_bw_opmode = usb_read8(adapt, REG_BWOPMODE);
 reg_prsr_rsc = usb_read8(adapt, REG_RRSR+2);

 switch (hal_data->CurrentChannelBW) {
 case 129:
  reg_bw_opmode |= BW_OPMODE_20MHZ;
  usb_write8(adapt, REG_BWOPMODE, reg_bw_opmode);
  break;
 case 128:
  reg_bw_opmode &= ~BW_OPMODE_20MHZ;
  usb_write8(adapt, REG_BWOPMODE, reg_bw_opmode);
  reg_prsr_rsc = (reg_prsr_rsc&0x90) |
          (hal_data->nCur40MhzPrimeSC<<5);
  usb_write8(adapt, REG_RRSR+2, reg_prsr_rsc);
  break;
 default:
  break;
 }


 switch (hal_data->CurrentChannelBW) {
 case 129:
  phy_set_bb_reg(adapt, rFPGA0_RFMOD, bRFMOD, 0x0);
  phy_set_bb_reg(adapt, rFPGA1_RFMOD, bRFMOD, 0x0);
  break;
 case 128:
  phy_set_bb_reg(adapt, rFPGA0_RFMOD, bRFMOD, 0x1);
  phy_set_bb_reg(adapt, rFPGA1_RFMOD, bRFMOD, 0x1);



  phy_set_bb_reg(adapt, rCCK0_System, bCCKSideBand,
      (hal_data->nCur40MhzPrimeSC>>1));
  phy_set_bb_reg(adapt, rOFDM1_LSTF, 0xC00,
          hal_data->nCur40MhzPrimeSC);
  phy_set_bb_reg(adapt, 0x818, (BIT(26) | BIT(27)),
     (hal_data->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
  break;
 default:
  break;
 }


 rtl88eu_phy_rf6052_set_bandwidth(adapt, hal_data->CurrentChannelBW);
}
