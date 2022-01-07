
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int plug_events_delay; int device_id; int enabled; } ;
struct tb_switch {int cap_plug_events; TYPE_1__ config; } ;





 int TB_CFG_SWITCH ;
 int tb_sw_read (struct tb_switch*,int*,int ,int,int) ;
 int tb_sw_write (struct tb_switch*,int*,int ,int,int) ;

__attribute__((used)) static int tb_plug_events_active(struct tb_switch *sw, bool active)
{
 u32 data;
 int res;

 if (!sw->config.enabled)
  return 0;

 sw->config.plug_events_delay = 0xff;
 res = tb_sw_write(sw, ((u32 *) &sw->config) + 4, TB_CFG_SWITCH, 4, 1);
 if (res)
  return res;

 res = tb_sw_read(sw, &data, TB_CFG_SWITCH, sw->cap_plug_events + 1, 1);
 if (res)
  return res;

 if (active) {
  data = data & 0xFFFFFF83;
  switch (sw->config.device_id) {
  case 129:
  case 130:
  case 128:
   break;
  default:
   data |= 4;
  }
 } else {
  data = data | 0x7c;
 }
 return tb_sw_write(sw, &data, TB_CFG_SWITCH,
      sw->cap_plug_events + 1, 1);
}
