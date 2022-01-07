
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_switch {int dummy; } ;
struct TYPE_4__ {int vsec_id; int next; int length; } ;
struct TYPE_3__ {int vsec_id; int next; } ;
struct tb_cap_any {TYPE_2__ extended_short; TYPE_1__ extended_long; } ;
typedef enum tb_switch_vse_cap { ____Placeholder_tb_switch_vse_cap } tb_switch_vse_cap ;


 int CAP_OFFSET_MAX ;
 int ENOENT ;
 int TB_CFG_SWITCH ;
 int TB_SWITCH_CAP_VSE ;
 int VSE_CAP_OFFSET_MAX ;
 int tb_sw_read (struct tb_switch*,struct tb_cap_any*,int ,int,int) ;
 int tb_switch_find_cap (struct tb_switch*,int ) ;

int tb_switch_find_vse_cap(struct tb_switch *sw, enum tb_switch_vse_cap vsec)
{
 struct tb_cap_any header;
 int offset;

 offset = tb_switch_find_cap(sw, TB_SWITCH_CAP_VSE);
 if (offset < 0)
  return offset;

 while (offset > 0 && offset < VSE_CAP_OFFSET_MAX) {
  int ret;

  ret = tb_sw_read(sw, &header, TB_CFG_SWITCH, offset, 2);
  if (ret)
   return ret;






  if (offset >= CAP_OFFSET_MAX) {
   if (header.extended_long.vsec_id == vsec)
    return offset;
   offset = header.extended_long.next;
  } else {
   if (header.extended_short.vsec_id == vsec)
    return offset;
   if (!header.extended_short.length)
    return -ENOENT;
   offset = header.extended_short.next;
  }
 }

 return -ENOENT;
}
