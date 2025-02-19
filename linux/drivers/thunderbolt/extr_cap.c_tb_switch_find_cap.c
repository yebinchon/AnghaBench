
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_cap_offset; } ;
struct tb_switch {TYPE_1__ config; } ;
struct TYPE_4__ {int cap; int next; } ;
struct tb_cap_any {TYPE_2__ basic; } ;
typedef enum tb_switch_cap { ____Placeholder_tb_switch_cap } tb_switch_cap ;


 int CAP_OFFSET_MAX ;
 int ENOENT ;
 int TB_CFG_SWITCH ;
 int tb_sw_read (struct tb_switch*,struct tb_cap_any*,int ,int,int) ;

__attribute__((used)) static int tb_switch_find_cap(struct tb_switch *sw, enum tb_switch_cap cap)
{
 int offset = sw->config.first_cap_offset;

 while (offset > 0 && offset < CAP_OFFSET_MAX) {
  struct tb_cap_any header;
  int ret;

  ret = tb_sw_read(sw, &header, TB_CFG_SWITCH, offset, 1);
  if (ret)
   return ret;

  if (header.basic.cap == cap)
   return offset;

  offset = header.basic.next;
 }

 return -ENOENT;
}
