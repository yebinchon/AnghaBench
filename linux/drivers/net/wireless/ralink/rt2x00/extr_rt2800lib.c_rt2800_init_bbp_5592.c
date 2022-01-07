
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;


 int BBP105_MLD ;
 int BBP152_RX_DEFAULT_ANT ;
 int BBP254_BIT7 ;
 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_ANT_DIVERSITY ;
 int REV_RT5592C ;
 int RT5592 ;
 int rt2800_bbp4_mac_if_ctrl (struct rt2x00_dev*) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_init_bbp_5592_glrt (struct rt2x00_dev*) ;
 int rt2800_init_bbp_early (struct rt2x00_dev*) ;
 int rt2800_init_freq_calibration (struct rt2x00_dev*) ;
 int rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_rt_rev_gte (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field8 (int*,int ,int) ;

__attribute__((used)) static void rt2800_init_bbp_5592(struct rt2x00_dev *rt2x00dev)
{
 int ant, div_mode;
 u16 eeprom;
 u8 value;

 rt2800_init_bbp_early(rt2x00dev);

 value = rt2800_bbp_read(rt2x00dev, 105);
 rt2x00_set_field8(&value, BBP105_MLD,
     rt2x00dev->default_ant.rx_chain_num == 2);
 rt2800_bbp_write(rt2x00dev, 105, value);

 rt2800_bbp4_mac_if_ctrl(rt2x00dev);

 rt2800_bbp_write(rt2x00dev, 20, 0x06);
 rt2800_bbp_write(rt2x00dev, 31, 0x08);
 rt2800_bbp_write(rt2x00dev, 65, 0x2C);
 rt2800_bbp_write(rt2x00dev, 68, 0xDD);
 rt2800_bbp_write(rt2x00dev, 69, 0x1A);
 rt2800_bbp_write(rt2x00dev, 70, 0x05);
 rt2800_bbp_write(rt2x00dev, 73, 0x13);
 rt2800_bbp_write(rt2x00dev, 74, 0x0F);
 rt2800_bbp_write(rt2x00dev, 75, 0x4F);
 rt2800_bbp_write(rt2x00dev, 76, 0x28);
 rt2800_bbp_write(rt2x00dev, 77, 0x59);
 rt2800_bbp_write(rt2x00dev, 84, 0x9A);
 rt2800_bbp_write(rt2x00dev, 86, 0x38);
 rt2800_bbp_write(rt2x00dev, 88, 0x90);
 rt2800_bbp_write(rt2x00dev, 91, 0x04);
 rt2800_bbp_write(rt2x00dev, 92, 0x02);
 rt2800_bbp_write(rt2x00dev, 95, 0x9a);
 rt2800_bbp_write(rt2x00dev, 98, 0x12);
 rt2800_bbp_write(rt2x00dev, 103, 0xC0);
 rt2800_bbp_write(rt2x00dev, 104, 0x92);

 rt2800_bbp_write(rt2x00dev, 105, 0x3C);
 rt2800_bbp_write(rt2x00dev, 106, 0x35);
 rt2800_bbp_write(rt2x00dev, 128, 0x12);
 rt2800_bbp_write(rt2x00dev, 134, 0xD0);
 rt2800_bbp_write(rt2x00dev, 135, 0xF6);
 rt2800_bbp_write(rt2x00dev, 137, 0x0F);


 rt2800_init_bbp_5592_glrt(rt2x00dev);

 rt2800_bbp4_mac_if_ctrl(rt2x00dev);

 eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1);
 div_mode = rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_ANT_DIVERSITY);
 ant = (div_mode == 3) ? 1 : 0;
 value = rt2800_bbp_read(rt2x00dev, 152);
 if (ant == 0) {

  rt2x00_set_field8(&value, BBP152_RX_DEFAULT_ANT, 1);
 } else {

  rt2x00_set_field8(&value, BBP152_RX_DEFAULT_ANT, 0);
 }
 rt2800_bbp_write(rt2x00dev, 152, value);

 if (rt2x00_rt_rev_gte(rt2x00dev, RT5592, REV_RT5592C)) {
  value = rt2800_bbp_read(rt2x00dev, 254);
  rt2x00_set_field8(&value, BBP254_BIT7, 1);
  rt2800_bbp_write(rt2x00dev, 254, value);
 }

 rt2800_init_freq_calibration(rt2x00dev);

 rt2800_bbp_write(rt2x00dev, 84, 0x19);
 if (rt2x00_rt_rev_gte(rt2x00dev, RT5592, REV_RT5592C))
  rt2800_bbp_write(rt2x00dev, 103, 0xc0);
}
