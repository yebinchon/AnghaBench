
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int REG_TXPAUSE ;
 int RF_AC ;
 int RF_CHNLBW ;
 int RF_PATH_A ;
 int RF_PATH_B ;
 int bMask12Bits ;
 int msleep (int) ;
 int phy_set_rf_reg (struct adapter*,int ,int ,int ,int) ;
 int rtw_hal_read_rfreg (struct adapter*,int ,int ,int ) ;
 int usb_read8 (struct adapter*,int) ;
 int usb_write8 (struct adapter*,int,int) ;

__attribute__((used)) static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
{
 u8 tmpreg;
 u32 rf_a_mode = 0, rf_b_mode = 0, lc_cal;


 tmpreg = usb_read8(adapt, 0xd03);

 if ((tmpreg&0x70) != 0)
  usb_write8(adapt, 0xd03, tmpreg&0x8F);
 else
  usb_write8(adapt, REG_TXPAUSE, 0xFF);

 if ((tmpreg&0x70) != 0) {


  rf_a_mode = rtw_hal_read_rfreg(adapt, RF_PATH_A, RF_AC,
          bMask12Bits);


  if (is2t)
   rf_b_mode = rtw_hal_read_rfreg(adapt, RF_PATH_B, RF_AC,
           bMask12Bits);



  phy_set_rf_reg(adapt, RF_PATH_A, RF_AC, bMask12Bits,
          (rf_a_mode&0x8FFFF)|0x10000);


  if (is2t)
   phy_set_rf_reg(adapt, RF_PATH_B, RF_AC, bMask12Bits,
           (rf_b_mode&0x8FFFF)|0x10000);
 }


 lc_cal = rtw_hal_read_rfreg(adapt, RF_PATH_A, RF_CHNLBW, bMask12Bits);


 phy_set_rf_reg(adapt, RF_PATH_A, RF_CHNLBW, bMask12Bits,
         lc_cal|0x08000);

 msleep(100);


 if ((tmpreg&0x70) != 0) {


  usb_write8(adapt, 0xd03, tmpreg);
  phy_set_rf_reg(adapt, RF_PATH_A, RF_AC, bMask12Bits, rf_a_mode);


  if (is2t)
   phy_set_rf_reg(adapt, RF_PATH_B, RF_AC, bMask12Bits,
           rf_b_mode);
 } else {

  usb_write8(adapt, REG_TXPAUSE, 0x00);
 }
}
