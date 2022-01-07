
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_DAC_TEST ;
 int GPIO_SWITCH ;
 int GPIO_SWITCH_5 ;
 int LDO_CFG0 ;
 int LDO_CFG0_BGSEL ;
 int LDO_CFG0_LDO_CORE_VLEVEL ;
 int REV_RT3070F ;
 int REV_RT3071E ;
 int REV_RT3090E ;
 int RFCSR6_R2 ;
 int RT3070 ;
 int RT3071 ;
 int RT3090 ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_led_open_drain_enable (struct rt2x00_dev*) ;
 int rt2800_normal_mode_setup_3xxx (struct rt2x00_dev*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_rf_init_calibration (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 int rt2800_rx_filter_calibration (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rt_rev_lt (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;

__attribute__((used)) static void rt2800_init_rfcsr_30xx(struct rt2x00_dev *rt2x00dev)
{
 u8 rfcsr;
 u16 eeprom;
 u32 reg;


 rt2800_rf_init_calibration(rt2x00dev, 30);

 rt2800_rfcsr_write(rt2x00dev, 4, 0x40);
 rt2800_rfcsr_write(rt2x00dev, 5, 0x03);
 rt2800_rfcsr_write(rt2x00dev, 6, 0x02);
 rt2800_rfcsr_write(rt2x00dev, 7, 0x60);
 rt2800_rfcsr_write(rt2x00dev, 9, 0x0f);
 rt2800_rfcsr_write(rt2x00dev, 10, 0x41);
 rt2800_rfcsr_write(rt2x00dev, 11, 0x21);
 rt2800_rfcsr_write(rt2x00dev, 12, 0x7b);
 rt2800_rfcsr_write(rt2x00dev, 14, 0x90);
 rt2800_rfcsr_write(rt2x00dev, 15, 0x58);
 rt2800_rfcsr_write(rt2x00dev, 16, 0xb3);
 rt2800_rfcsr_write(rt2x00dev, 17, 0x92);
 rt2800_rfcsr_write(rt2x00dev, 18, 0x2c);
 rt2800_rfcsr_write(rt2x00dev, 19, 0x02);
 rt2800_rfcsr_write(rt2x00dev, 20, 0xba);
 rt2800_rfcsr_write(rt2x00dev, 21, 0xdb);
 rt2800_rfcsr_write(rt2x00dev, 24, 0x16);
 rt2800_rfcsr_write(rt2x00dev, 25, 0x03);
 rt2800_rfcsr_write(rt2x00dev, 29, 0x1f);

 if (rt2x00_rt_rev_lt(rt2x00dev, RT3070, REV_RT3070F)) {
  reg = rt2800_register_read(rt2x00dev, LDO_CFG0);
  rt2x00_set_field32(&reg, LDO_CFG0_BGSEL, 1);
  rt2x00_set_field32(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
  rt2800_register_write(rt2x00dev, LDO_CFG0, reg);
 } else if (rt2x00_rt(rt2x00dev, RT3071) ||
     rt2x00_rt(rt2x00dev, RT3090)) {
  rt2800_rfcsr_write(rt2x00dev, 31, 0x14);

  rfcsr = rt2800_rfcsr_read(rt2x00dev, 6);
  rt2x00_set_field8(&rfcsr, RFCSR6_R2, 1);
  rt2800_rfcsr_write(rt2x00dev, 6, rfcsr);

  reg = rt2800_register_read(rt2x00dev, LDO_CFG0);
  rt2x00_set_field32(&reg, LDO_CFG0_BGSEL, 1);
  if (rt2x00_rt_rev_lt(rt2x00dev, RT3071, REV_RT3071E) ||
      rt2x00_rt_rev_lt(rt2x00dev, RT3090, REV_RT3090E)) {
   eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1);
   if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_DAC_TEST))
    rt2x00_set_field32(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
   else
    rt2x00_set_field32(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 0);
  }
  rt2800_register_write(rt2x00dev, LDO_CFG0, reg);

  reg = rt2800_register_read(rt2x00dev, GPIO_SWITCH);
  rt2x00_set_field32(&reg, GPIO_SWITCH_5, 0);
  rt2800_register_write(rt2x00dev, GPIO_SWITCH, reg);
 }

 rt2800_rx_filter_calibration(rt2x00dev);

 if (rt2x00_rt_rev_lt(rt2x00dev, RT3070, REV_RT3070F) ||
     rt2x00_rt_rev_lt(rt2x00dev, RT3071, REV_RT3071E) ||
     rt2x00_rt_rev_lt(rt2x00dev, RT3090, REV_RT3090E))
  rt2800_rfcsr_write(rt2x00dev, 27, 0x03);

 rt2800_led_open_drain_enable(rt2x00dev);
 rt2800_normal_mode_setup_3xxx(rt2x00dev);
}
