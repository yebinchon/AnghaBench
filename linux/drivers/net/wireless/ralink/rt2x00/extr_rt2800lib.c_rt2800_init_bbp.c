
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;


 int EEPROM_BBP_REG_ID ;
 unsigned int EEPROM_BBP_SIZE ;
 int EEPROM_BBP_START ;
 int EEPROM_BBP_VALUE ;
 int rt2800_bbp_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_eeprom_read_from_array (struct rt2x00_dev*,int ,unsigned int) ;
 int rt2800_init_bbp_28xx (struct rt2x00_dev*) ;
 int rt2800_init_bbp_305x_soc (struct rt2x00_dev*) ;
 int rt2800_init_bbp_30xx (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3290 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3352 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3390 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3572 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3593 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_3883 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_53xx (struct rt2x00_dev*) ;
 int rt2800_init_bbp_5592 (struct rt2x00_dev*) ;
 int rt2800_init_bbp_6352 (struct rt2x00_dev*) ;
 scalar_t__ rt2800_is_305x_soc (struct rt2x00_dev*) ;
 int rt2x00_get_field16 (int,int ) ;

__attribute__((used)) static void rt2800_init_bbp(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;
 u16 eeprom;
 u8 reg_id;
 u8 value;

 if (rt2800_is_305x_soc(rt2x00dev))
  rt2800_init_bbp_305x_soc(rt2x00dev);

 switch (rt2x00dev->chip.rt) {
 case 144:
 case 143:
 case 142:
  rt2800_init_bbp_28xx(rt2x00dev);
  break;
 case 141:
 case 140:
 case 139:
  rt2800_init_bbp_30xx(rt2x00dev);
  break;
 case 138:
  rt2800_init_bbp_3290(rt2x00dev);
  break;
 case 137:
 case 132:
  rt2800_init_bbp_3352(rt2x00dev);
  break;
 case 136:
  rt2800_init_bbp_3390(rt2x00dev);
  break;
 case 135:
  rt2800_init_bbp_3572(rt2x00dev);
  break;
 case 134:
  rt2800_init_bbp_3593(rt2x00dev);
  return;
 case 133:
  rt2800_init_bbp_3883(rt2x00dev);
  return;
 case 131:
 case 130:
  rt2800_init_bbp_53xx(rt2x00dev);
  break;
 case 129:
  rt2800_init_bbp_5592(rt2x00dev);
  return;
 case 128:
  rt2800_init_bbp_6352(rt2x00dev);
  break;
 }

 for (i = 0; i < EEPROM_BBP_SIZE; i++) {
  eeprom = rt2800_eeprom_read_from_array(rt2x00dev,
             EEPROM_BBP_START, i);

  if (eeprom != 0xffff && eeprom != 0x0000) {
   reg_id = rt2x00_get_field16(eeprom, EEPROM_BBP_REG_ID);
   value = rt2x00_get_field16(eeprom, EEPROM_BBP_VALUE);
   rt2800_bbp_write(rt2x00dev, reg_id, value);
  }
 }
}
