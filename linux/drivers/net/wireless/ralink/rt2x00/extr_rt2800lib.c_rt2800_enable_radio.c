
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EEPROM_LED_ACT_CONF ;
 int EEPROM_LED_AG_CONF ;
 int EEPROM_LED_POLARITY ;
 int EIO ;
 int H2M_BBP_AGENT ;
 int H2M_INT_SRC ;
 int H2M_MAILBOX_CSR ;
 int MAC_SYS_CTRL ;
 int MAC_SYS_CTRL_ENABLE_RX ;
 int MAC_SYS_CTRL_ENABLE_TX ;
 int MCU_BOOT_SIGNAL ;
 int MCU_CURRENT ;
 int MCU_LED_ACT_CONF ;
 int MCU_LED_AG_CONF ;
 int MCU_LED_LED_POLARITY ;
 int RT3070 ;
 int RT3071 ;
 int RT3572 ;
 int WPDMA_GLO_CFG ;
 int WPDMA_GLO_CFG_ENABLE_RX_DMA ;
 int WPDMA_GLO_CFG_ENABLE_TX_DMA ;
 int WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int msleep (int) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_init_bbp (struct rt2x00_dev*) ;
 scalar_t__ rt2800_init_registers (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr (struct rt2x00_dev*) ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int,int,int) ;
 scalar_t__ rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2800_wait_bbp_ready (struct rt2x00_dev*) ;
 int rt2800_wait_bbp_rf_ready (struct rt2x00_dev*) ;
 scalar_t__ rt2800_wait_wpdma_ready (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 word;




 if (unlikely(rt2800_wait_wpdma_ready(rt2x00dev) ||
       rt2800_init_registers(rt2x00dev)))
  return -EIO;




 if (unlikely(rt2800_wait_bbp_rf_ready(rt2x00dev)))
  return -EIO;




 rt2800_register_write(rt2x00dev, H2M_BBP_AGENT, 0);
 rt2800_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);
 if (rt2x00_is_usb(rt2x00dev))
  rt2800_register_write(rt2x00dev, H2M_INT_SRC, 0);
 rt2800_mcu_request(rt2x00dev, MCU_BOOT_SIGNAL, 0, 0, 0);
 msleep(1);




 if (unlikely(rt2800_wait_bbp_ready(rt2x00dev)))
  return -EIO;




 rt2800_init_bbp(rt2x00dev);
 rt2800_init_rfcsr(rt2x00dev);

 if (rt2x00_is_usb(rt2x00dev) &&
     (rt2x00_rt(rt2x00dev, RT3070) ||
      rt2x00_rt(rt2x00dev, RT3071) ||
      rt2x00_rt(rt2x00dev, RT3572))) {
  udelay(200);
  rt2800_mcu_request(rt2x00dev, MCU_CURRENT, 0, 0, 0);
  udelay(10);
 }




 reg = rt2800_register_read(rt2x00dev, MAC_SYS_CTRL);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
 rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, reg);

 udelay(50);

 reg = rt2800_register_read(rt2x00dev, WPDMA_GLO_CFG);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_ENABLE_TX_DMA, 1);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_ENABLE_RX_DMA, 1);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_TX_WRITEBACK_DONE, 1);
 rt2800_register_write(rt2x00dev, WPDMA_GLO_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, MAC_SYS_CTRL);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_TX, 1);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_RX, 1);
 rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, reg);




 word = rt2800_eeprom_read(rt2x00dev, EEPROM_LED_AG_CONF);
 rt2800_mcu_request(rt2x00dev, MCU_LED_AG_CONF, 0xff,
      word & 0xff, (word >> 8) & 0xff);

 word = rt2800_eeprom_read(rt2x00dev, EEPROM_LED_ACT_CONF);
 rt2800_mcu_request(rt2x00dev, MCU_LED_ACT_CONF, 0xff,
      word & 0xff, (word >> 8) & 0xff);

 word = rt2800_eeprom_read(rt2x00dev, EEPROM_LED_POLARITY);
 rt2800_mcu_request(rt2x00dev, MCU_LED_LED_POLARITY, 0xff,
      word & 0xff, (word >> 8) & 0xff);

 return 0;
}
