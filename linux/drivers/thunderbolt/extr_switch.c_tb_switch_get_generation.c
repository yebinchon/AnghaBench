
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_id; } ;
struct tb_switch {TYPE_1__ config; } ;
 int tb_sw_warn (struct tb_switch*,char*,int) ;

__attribute__((used)) static int tb_switch_get_generation(struct tb_switch *sw)
{
 switch (sw->config.device_id) {
 case 135:
 case 141:
 case 136:
 case 143:
 case 142:
 case 134:
 case 133:
 case 132:
  return 1;

 case 128:
 case 140:
 case 139:
  return 2;

 case 144:
 case 148:
 case 147:
 case 146:
 case 145:
 case 131:
 case 130:
 case 129:
 case 138:
 case 137:
  return 3;

 default:




  tb_sw_warn(sw, "unsupported switch device id %#x\n",
      sw->config.device_id);
  return 1;
 }
}
