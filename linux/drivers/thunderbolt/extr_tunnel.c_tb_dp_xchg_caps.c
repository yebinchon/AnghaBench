
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_tunnel {struct tb_port* src_port; struct tb_port* dst_port; } ;
struct tb_port {scalar_t__ cap_adap; TYPE_1__* sw; } ;
struct TYPE_2__ {int generation; } ;


 int TB_CFG_PORT ;
 scalar_t__ TB_DP_LOCAL_CAP ;
 scalar_t__ TB_DP_REMOTE_CAP ;
 int tb_port_read (struct tb_port*,int *,int ,scalar_t__,int) ;
 int tb_port_write (struct tb_port*,int *,int ,scalar_t__,int) ;

__attribute__((used)) static int tb_dp_xchg_caps(struct tb_tunnel *tunnel)
{
 struct tb_port *out = tunnel->dst_port;
 struct tb_port *in = tunnel->src_port;
 u32 in_dp_cap, out_dp_cap;
 int ret;





 if (in->sw->generation < 2 || out->sw->generation < 2)
  return 0;


 ret = tb_port_read(in, &in_dp_cap, TB_CFG_PORT,
      in->cap_adap + TB_DP_LOCAL_CAP, 1);
 if (ret)
  return ret;

 ret = tb_port_read(out, &out_dp_cap, TB_CFG_PORT,
      out->cap_adap + TB_DP_LOCAL_CAP, 1);
 if (ret)
  return ret;


 ret = tb_port_write(out, &in_dp_cap, TB_CFG_PORT,
       out->cap_adap + TB_DP_REMOTE_CAP, 1);
 if (ret)
  return ret;

 return tb_port_write(in, &out_dp_cap, TB_CFG_PORT,
        in->cap_adap + TB_DP_REMOTE_CAP, 1);
}
