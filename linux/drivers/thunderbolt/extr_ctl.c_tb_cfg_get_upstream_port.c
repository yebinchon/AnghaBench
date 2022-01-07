
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tb_ctl {int dummy; } ;
struct tb_cfg_result {int err; int response_port; } ;


 int EIO ;
 int TB_CFG_DEFAULT_TIMEOUT ;
 int TB_CFG_SWITCH ;
 struct tb_cfg_result tb_cfg_read_raw (struct tb_ctl*,int *,int ,int ,int ,int ,int,int ) ;

int tb_cfg_get_upstream_port(struct tb_ctl *ctl, u64 route)
{
 u32 dummy;
 struct tb_cfg_result res = tb_cfg_read_raw(ctl, &dummy, route, 0,
         TB_CFG_SWITCH, 0, 1,
         TB_CFG_DEFAULT_TIMEOUT);
 if (res.err == 1)
  return -EIO;
 if (res.err)
  return res.err;
 return res.response_port;
}
