
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {int flags; TYPE_1__ default_ant; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int rx_calibration_bw40; int tx_calibration_bw40; int rx_calibration_bw20; int tx_calibration_bw20; } ;
struct rf_channel {int rf1; int rf2; int rf3; int rf4; int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int dummy; } ;


 int DEVICE_STATE_SCANNING ;
 int RFCSR13_RDIV_MT7620 ;
 int RFCSR16_RF_PLL_FREQ_SEL_MT7620 ;
 int RFCSR16_SDM_MODE_MT7620 ;
 int RFCSR19_K ;
 int RFCSR1_TX2_EN_MT7620 ;
 int RFCSR21_BIT1 ;
 int RFCSR21_BIT8 ;
 int RFCSR22_FREQPLAN_D_MT7620 ;
 int RFCSR28_CH11_HT40 ;
 int RFCSR2_RX2_EN_MT7620 ;
 int RFCSR2_TX2_EN_MT7620 ;
 int RFCSR42_TX2_EN_MT7620 ;
 scalar_t__ conf_is_ht40 (struct ieee80211_conf*) ;
 scalar_t__ rt2800_clk_is_20mhz (struct rt2x00_dev*) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_read_bank (struct rt2x00_dev*,int,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 int rt2800_rfcsr_write_bank (struct rt2x00_dev*,int,int,int) ;
 int rt2800_rfcsr_write_dccal (struct rt2x00_dev*,int,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2800_config_channel_rf7620(struct rt2x00_dev *rt2x00dev,
      struct ieee80211_conf *conf,
      struct rf_channel *rf,
      struct channel_info *info)
{
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 u8 rx_agc_fc, tx_agc_fc;
 u8 rfcsr;





 rfcsr = rt2800_rfcsr_read(rt2x00dev, 13);
 rt2x00_set_field8(&rfcsr, RFCSR13_RDIV_MT7620,
     rt2800_clk_is_20mhz(rt2x00dev) ? 3 : 0);
 rt2800_rfcsr_write(rt2x00dev, 13, rfcsr);





 rfcsr = rt2800_rfcsr_read(rt2x00dev, 20);
 rfcsr = (rf->rf1 & 0x00ff);
 rt2800_rfcsr_write(rt2x00dev, 20, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 21);
 rt2x00_set_field8(&rfcsr, RFCSR21_BIT1, 0);
 rt2800_rfcsr_write(rt2x00dev, 21, rfcsr);




 rfcsr = rt2800_rfcsr_read(rt2x00dev, 16);
 rt2x00_set_field8(&rfcsr, RFCSR16_RF_PLL_FREQ_SEL_MT7620, 0);
 rt2800_rfcsr_write(rt2x00dev, 16, rfcsr);




 rfcsr = rt2800_rfcsr_read(rt2x00dev, 22);
 rt2x00_set_field8(&rfcsr, RFCSR22_FREQPLAN_D_MT7620, 0);
 rt2800_rfcsr_write(rt2x00dev, 22, rfcsr);






 rfcsr = rt2800_rfcsr_read(rt2x00dev, 17);
 rfcsr = rf->rf2;
 rt2800_rfcsr_write(rt2x00dev, 17, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 18);
 rfcsr = rf->rf3;
 rt2800_rfcsr_write(rt2x00dev, 18, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 19);
 rt2x00_set_field8(&rfcsr, RFCSR19_K, rf->rf4);
 rt2800_rfcsr_write(rt2x00dev, 19, rfcsr);


 rfcsr = rt2800_rfcsr_read(rt2x00dev, 16);
 rt2x00_set_field8(&rfcsr, RFCSR16_SDM_MODE_MT7620, 0x80);
 rt2800_rfcsr_write(rt2x00dev, 16, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 21);
 rt2x00_set_field8(&rfcsr, RFCSR21_BIT8, 1);
 rt2800_rfcsr_write(rt2x00dev, 21, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 1);
 rt2x00_set_field8(&rfcsr, RFCSR1_TX2_EN_MT7620,
     rt2x00dev->default_ant.tx_chain_num != 1);
 rt2800_rfcsr_write(rt2x00dev, 1, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 2);
 rt2x00_set_field8(&rfcsr, RFCSR2_TX2_EN_MT7620,
     rt2x00dev->default_ant.tx_chain_num != 1);
 rt2x00_set_field8(&rfcsr, RFCSR2_RX2_EN_MT7620,
     rt2x00dev->default_ant.rx_chain_num != 1);
 rt2800_rfcsr_write(rt2x00dev, 2, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 42);
 rt2x00_set_field8(&rfcsr, RFCSR42_TX2_EN_MT7620,
     rt2x00dev->default_ant.tx_chain_num != 1);
 rt2800_rfcsr_write(rt2x00dev, 42, rfcsr);


 if (conf_is_ht40(conf)) {
  rt2800_rfcsr_write_dccal(rt2x00dev, 6, 0x10);
  rt2800_rfcsr_write_dccal(rt2x00dev, 7, 0x10);
  rt2800_rfcsr_write_dccal(rt2x00dev, 8, 0x04);
  rt2800_rfcsr_write_dccal(rt2x00dev, 58, 0x10);
  rt2800_rfcsr_write_dccal(rt2x00dev, 59, 0x10);
 } else {
  rt2800_rfcsr_write_dccal(rt2x00dev, 6, 0x20);
  rt2800_rfcsr_write_dccal(rt2x00dev, 7, 0x20);
  rt2800_rfcsr_write_dccal(rt2x00dev, 8, 0x00);
  rt2800_rfcsr_write_dccal(rt2x00dev, 58, 0x20);
  rt2800_rfcsr_write_dccal(rt2x00dev, 59, 0x20);
 }

 if (conf_is_ht40(conf)) {
  rt2800_rfcsr_write_dccal(rt2x00dev, 58, 0x08);
  rt2800_rfcsr_write_dccal(rt2x00dev, 59, 0x08);
 } else {
  rt2800_rfcsr_write_dccal(rt2x00dev, 58, 0x28);
  rt2800_rfcsr_write_dccal(rt2x00dev, 59, 0x28);
 }

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 28);
 rt2x00_set_field8(&rfcsr, RFCSR28_CH11_HT40,
     conf_is_ht40(conf) && (rf->channel == 11));
 rt2800_rfcsr_write(rt2x00dev, 28, rfcsr);

 if (!test_bit(DEVICE_STATE_SCANNING, &rt2x00dev->flags)) {
  if (conf_is_ht40(conf)) {
   rx_agc_fc = drv_data->rx_calibration_bw40;
   tx_agc_fc = drv_data->tx_calibration_bw40;
  } else {
   rx_agc_fc = drv_data->rx_calibration_bw20;
   tx_agc_fc = drv_data->tx_calibration_bw20;
  }
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 5, 6);
  rfcsr &= (~0x3F);
  rfcsr |= rx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 5, 6, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 5, 7);
  rfcsr &= (~0x3F);
  rfcsr |= rx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 5, 7, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 7, 6);
  rfcsr &= (~0x3F);
  rfcsr |= rx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 7, 6, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 7, 7);
  rfcsr &= (~0x3F);
  rfcsr |= rx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 7, 7, rfcsr);

  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 5, 58);
  rfcsr &= (~0x3F);
  rfcsr |= tx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 5, 58, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 5, 59);
  rfcsr &= (~0x3F);
  rfcsr |= tx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 5, 59, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 7, 58);
  rfcsr &= (~0x3F);
  rfcsr |= tx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 7, 58, rfcsr);
  rfcsr = rt2800_rfcsr_read_bank(rt2x00dev, 7, 59);
  rfcsr &= (~0x3F);
  rfcsr |= tx_agc_fc;
  rt2800_rfcsr_write_bank(rt2x00dev, 7, 59, rfcsr);
 }
}
