
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tb_switch {int dummy; } ;
struct tb_eeprom_ctl {int data_in; } ;


 int TB_EEPROM_IN ;
 int tb_eeprom_ctl_read (struct tb_switch*,struct tb_eeprom_ctl*) ;
 int tb_eeprom_transfer (struct tb_switch*,struct tb_eeprom_ctl*,int ) ;

__attribute__((used)) static int tb_eeprom_in(struct tb_switch *sw, u8 *val)
{
 struct tb_eeprom_ctl ctl;
 int i;
 int res = tb_eeprom_ctl_read(sw, &ctl);
 if (res)
  return res;
 *val = 0;
 for (i = 0; i < 8; i++) {
  *val <<= 1;
  res = tb_eeprom_transfer(sw, &ctl, TB_EEPROM_IN);
  if (res)
   return res;
  *val |= ctl.data_in;
 }
 return 0;
}
