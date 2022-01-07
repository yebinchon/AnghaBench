
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tb_regs_switch_header {int route_hi; int member_0; int route_lo; int member_1; int enabled; int member_2; } ;
struct tb_cfg_result {int err; } ;
struct tb {int ctl; } ;


 int EIO ;
 int TB_CFG_DEFAULT_TIMEOUT ;
 struct tb_cfg_result tb_cfg_reset (int ,int,int ) ;
 int tb_cfg_write (int ,int *,int,int ,int,int,int) ;
 int tb_dbg (struct tb*,char*,int) ;

int tb_switch_reset(struct tb *tb, u64 route)
{
 struct tb_cfg_result res;
 struct tb_regs_switch_header header = {
  header.route_hi = route >> 32,
  header.route_lo = route,
  header.enabled = 1,
 };
 tb_dbg(tb, "resetting switch at %llx\n", route);
 res.err = tb_cfg_write(tb->ctl, ((u32 *) &header) + 2, route,
   0, 2, 2, 2);
 if (res.err)
  return res.err;
 res = tb_cfg_reset(tb->ctl, route, TB_CFG_DEFAULT_TIMEOUT);
 if (res.err > 0)
  return -EIO;
 return res.err;
}
