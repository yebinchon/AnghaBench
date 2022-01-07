
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {scalar_t__ cap_plug_events; } ;
struct tb_eeprom_ctl {int dummy; } ;


 int TB_CFG_SWITCH ;
 int tb_sw_read (struct tb_switch*,struct tb_eeprom_ctl*,int ,scalar_t__,int) ;

__attribute__((used)) static int tb_eeprom_ctl_read(struct tb_switch *sw, struct tb_eeprom_ctl *ctl)
{
 return tb_sw_read(sw, ctl, TB_CFG_SWITCH, sw->cap_plug_events + 4, 1);
}
