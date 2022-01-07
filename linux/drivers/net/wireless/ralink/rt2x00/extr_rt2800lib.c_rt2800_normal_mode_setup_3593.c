
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int txmixer_gain_24g; } ;


 int RFCSR17_TXMIXER_GAIN ;
 int RFCSR1_PLL_PD ;
 int RFCSR1_RF_BLOCK_EN ;
 int RFCSR30_RX_VCM ;
 int RFCSR38_RX_LO1_EN ;
 int RFCSR39_RX_LO2_EN ;
 int RFCSR50_TX_LO2_EN ;
 int RFCSR51_BITS24 ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 int rt2x00_get_field8 (int ,int ) ;
 int rt2x00_set_field8 (int*,int ,int) ;

__attribute__((used)) static void rt2800_normal_mode_setup_3593(struct rt2x00_dev *rt2x00dev)
{
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 u8 rfcsr;
 u8 tx_gain;

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 50);
 rt2x00_set_field8(&rfcsr, RFCSR50_TX_LO2_EN, 0);
 rt2800_rfcsr_write(rt2x00dev, 50, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 51);
 tx_gain = rt2x00_get_field8(drv_data->txmixer_gain_24g,
        RFCSR17_TXMIXER_GAIN);
 rt2x00_set_field8(&rfcsr, RFCSR51_BITS24, tx_gain);
 rt2800_rfcsr_write(rt2x00dev, 51, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 38);
 rt2x00_set_field8(&rfcsr, RFCSR38_RX_LO1_EN, 0);
 rt2800_rfcsr_write(rt2x00dev, 38, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 39);
 rt2x00_set_field8(&rfcsr, RFCSR39_RX_LO2_EN, 0);
 rt2800_rfcsr_write(rt2x00dev, 39, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 1);
 rt2x00_set_field8(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
 rt2x00_set_field8(&rfcsr, RFCSR1_PLL_PD, 1);
 rt2800_rfcsr_write(rt2x00dev, 1, rfcsr);

 rfcsr = rt2800_rfcsr_read(rt2x00dev, 30);
 rt2x00_set_field8(&rfcsr, RFCSR30_RX_VCM, 2);
 rt2800_rfcsr_write(rt2x00dev, 30, rfcsr);


}
