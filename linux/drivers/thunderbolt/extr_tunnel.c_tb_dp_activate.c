
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int dst_port; int src_port; struct tb_path** paths; } ;
struct tb_path {int path_length; TYPE_1__* hops; } ;
struct TYPE_2__ {int next_hop_index; int in_hop_index; } ;


 size_t TB_DP_AUX_PATH_IN ;
 size_t TB_DP_AUX_PATH_OUT ;
 size_t TB_DP_VIDEO_PATH_OUT ;
 int tb_dp_port_enable (int ,int) ;
 int tb_dp_port_hpd_clear (int ) ;
 int tb_dp_port_set_hops (int ,int ,int ,int ) ;
 scalar_t__ tb_port_is_dpout (int ) ;

__attribute__((used)) static int tb_dp_activate(struct tb_tunnel *tunnel, bool active)
{
 int ret;

 if (active) {
  struct tb_path **paths;
  int last;

  paths = tunnel->paths;
  last = paths[TB_DP_VIDEO_PATH_OUT]->path_length - 1;

  tb_dp_port_set_hops(tunnel->src_port,
   paths[TB_DP_VIDEO_PATH_OUT]->hops[0].in_hop_index,
   paths[TB_DP_AUX_PATH_OUT]->hops[0].in_hop_index,
   paths[TB_DP_AUX_PATH_IN]->hops[last].next_hop_index);

  tb_dp_port_set_hops(tunnel->dst_port,
   paths[TB_DP_VIDEO_PATH_OUT]->hops[last].next_hop_index,
   paths[TB_DP_AUX_PATH_IN]->hops[0].in_hop_index,
   paths[TB_DP_AUX_PATH_OUT]->hops[last].next_hop_index);
 } else {
  tb_dp_port_hpd_clear(tunnel->src_port);
  tb_dp_port_set_hops(tunnel->src_port, 0, 0, 0);
  if (tb_port_is_dpout(tunnel->dst_port))
   tb_dp_port_set_hops(tunnel->dst_port, 0, 0, 0);
 }

 ret = tb_dp_port_enable(tunnel->src_port, active);
 if (ret)
  return ret;

 if (tb_port_is_dpout(tunnel->dst_port))
  return tb_dp_port_enable(tunnel->dst_port, active);

 return 0;
}
