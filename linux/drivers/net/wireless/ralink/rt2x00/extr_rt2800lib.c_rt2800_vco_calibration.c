
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int tx_chain_num; int rx_chain_num; } ;
struct TYPE_3__ {int rf; } ;
struct rt2x00_dev {int rf_channel; TYPE_2__ default_ant; TYPE_1__ chip; } ;
 int RFCSR3_VCOCAL_EN ;
 int RFCSR4_VCOCAL_EN ;
 int RFCSR7_RF_TUNING ;
 int RT6352 ;
 int TX_PIN_CFG ;
 int TX_PIN_CFG_PA_PE_A0_EN ;
 int TX_PIN_CFG_PA_PE_A1_EN ;
 int TX_PIN_CFG_PA_PE_A2_EN ;
 int TX_PIN_CFG_PA_PE_DISABLE ;
 int TX_PIN_CFG_PA_PE_G0_EN ;
 int TX_PIN_CFG_PA_PE_G1_EN ;
 int TX_PIN_CFG_PA_PE_G2_EN ;
 int WARN_ONCE (int,char*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 scalar_t__ rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;
 int usleep_range (int,int) ;

void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev)
{
 u32 tx_pin;
 u8 rfcsr;
 unsigned long min_sleep = 0;
 tx_pin = rt2800_register_read(rt2x00dev, TX_PIN_CFG);
 tx_pin &= TX_PIN_CFG_PA_PE_DISABLE;
 rt2800_register_write(rt2x00dev, TX_PIN_CFG, tx_pin);

 switch (rt2x00dev->chip.rf) {
 case 146:
 case 145:
 case 144:
 case 143:
 case 138:
 case 142:
  rfcsr = rt2800_rfcsr_read(rt2x00dev, 7);
  rt2x00_set_field8(&rfcsr, RFCSR7_RF_TUNING, 1);
  rt2800_rfcsr_write(rt2x00dev, 7, rfcsr);
  break;
 case 141:
 case 140:
 case 139:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  rfcsr = rt2800_rfcsr_read(rt2x00dev, 3);
  rt2x00_set_field8(&rfcsr, RFCSR3_VCOCAL_EN, 1);
  rt2800_rfcsr_write(rt2x00dev, 3, rfcsr);
  min_sleep = 1000;
  break;
 case 128:
  rt2800_rfcsr_write(rt2x00dev, 5, 0x40);
  rt2800_rfcsr_write(rt2x00dev, 4, 0x0C);
  rfcsr = rt2800_rfcsr_read(rt2x00dev, 4);
  rt2x00_set_field8(&rfcsr, RFCSR4_VCOCAL_EN, 1);
  rt2800_rfcsr_write(rt2x00dev, 4, rfcsr);
  min_sleep = 2000;
  break;
 default:
  WARN_ONCE(1, "Not supported RF chipset %x for VCO recalibration",
     rt2x00dev->chip.rf);
  return;
 }

 if (min_sleep > 0)
  usleep_range(min_sleep, min_sleep * 2);

 tx_pin = rt2800_register_read(rt2x00dev, TX_PIN_CFG);
 if (rt2x00dev->rf_channel <= 14) {
  switch (rt2x00dev->default_ant.tx_chain_num) {
  case 3:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN, 1);

  case 2:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN, 1);

  case 1:
  default:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
   break;
  }
 } else {
  switch (rt2x00dev->default_ant.tx_chain_num) {
  case 3:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN, 1);

  case 2:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN, 1);

  case 1:
  default:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN, 1);
   break;
  }
 }
 rt2800_register_write(rt2x00dev, TX_PIN_CFG, tx_pin);

 if (rt2x00_rt(rt2x00dev, RT6352)) {
  if (rt2x00dev->default_ant.rx_chain_num == 1) {
   rt2800_bbp_write(rt2x00dev, 91, 0x07);
   rt2800_bbp_write(rt2x00dev, 95, 0x1A);
   rt2800_bbp_write(rt2x00dev, 195, 128);
   rt2800_bbp_write(rt2x00dev, 196, 0xA0);
   rt2800_bbp_write(rt2x00dev, 195, 170);
   rt2800_bbp_write(rt2x00dev, 196, 0x12);
   rt2800_bbp_write(rt2x00dev, 195, 171);
   rt2800_bbp_write(rt2x00dev, 196, 0x10);
  } else {
   rt2800_bbp_write(rt2x00dev, 91, 0x06);
   rt2800_bbp_write(rt2x00dev, 95, 0x9A);
   rt2800_bbp_write(rt2x00dev, 195, 128);
   rt2800_bbp_write(rt2x00dev, 196, 0xE0);
   rt2800_bbp_write(rt2x00dev, 195, 170);
   rt2800_bbp_write(rt2x00dev, 196, 0x30);
   rt2800_bbp_write(rt2x00dev, 195, 171);
   rt2800_bbp_write(rt2x00dev, 196, 0x30);
  }

  if (rt2x00_has_cap_external_lna_bg(rt2x00dev)) {
   rt2800_bbp_write(rt2x00dev, 75, 0x68);
   rt2800_bbp_write(rt2x00dev, 76, 0x4C);
   rt2800_bbp_write(rt2x00dev, 79, 0x1C);
   rt2800_bbp_write(rt2x00dev, 80, 0x0C);
   rt2800_bbp_write(rt2x00dev, 82, 0xB6);
  }






  usleep_range(1000, 1500);
 }
}
