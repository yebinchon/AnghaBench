
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {scalar_t__ cap_lc; } ;


 int EINVAL ;
 int TB_CFG_SWITCH ;
 scalar_t__ TB_LC_DESC ;
 int tb_sw_read (struct tb_switch*,int *,int ,scalar_t__,int) ;

__attribute__((used)) static int read_lc_desc(struct tb_switch *sw, u32 *desc)
{
 if (!sw->cap_lc)
  return -EINVAL;
 return tb_sw_read(sw, desc, TB_CFG_SWITCH, sw->cap_lc + TB_LC_DESC, 1);
}
