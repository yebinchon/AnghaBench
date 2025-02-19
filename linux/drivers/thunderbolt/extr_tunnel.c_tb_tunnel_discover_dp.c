
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_tunnel {struct tb_port* src_port; struct tb_port* dst_port; struct tb_path** paths; int activate; int init; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;


 size_t TB_DP_AUX_PATH_IN ;
 size_t TB_DP_AUX_PATH_OUT ;
 int TB_DP_AUX_RX_HOPID ;
 int TB_DP_AUX_TX_HOPID ;
 int TB_DP_VIDEO_HOPID ;
 size_t TB_DP_VIDEO_PATH_OUT ;
 int TB_TUNNEL_DP ;
 int tb_dp_activate ;
 int tb_dp_init_aux_path (struct tb_path*) ;
 int tb_dp_init_video_path (struct tb_path*,int) ;
 int tb_dp_port_enable (struct tb_port*,int) ;
 int tb_dp_port_hpd_is_active (struct tb_port*) ;
 int tb_dp_port_is_enabled (struct tb_port*) ;
 int tb_dp_xchg_caps ;
 struct tb_path* tb_path_discover (struct tb_port*,int,struct tb_port*,int,struct tb_port**,char*) ;
 int tb_port_is_dpout (struct tb_port*) ;
 int tb_port_warn (struct tb_port*,char*) ;
 struct tb_tunnel* tb_tunnel_alloc (struct tb*,int,int ) ;
 int tb_tunnel_dbg (struct tb_tunnel*,char*) ;
 int tb_tunnel_deactivate (struct tb_tunnel*) ;
 int tb_tunnel_free (struct tb_tunnel*) ;
 int tb_tunnel_warn (struct tb_tunnel*,char*) ;

struct tb_tunnel *tb_tunnel_discover_dp(struct tb *tb, struct tb_port *in)
{
 struct tb_tunnel *tunnel;
 struct tb_port *port;
 struct tb_path *path;

 if (!tb_dp_port_is_enabled(in))
  return ((void*)0);

 tunnel = tb_tunnel_alloc(tb, 3, TB_TUNNEL_DP);
 if (!tunnel)
  return ((void*)0);

 tunnel->init = tb_dp_xchg_caps;
 tunnel->activate = tb_dp_activate;
 tunnel->src_port = in;

 path = tb_path_discover(in, TB_DP_VIDEO_HOPID, ((void*)0), -1,
    &tunnel->dst_port, "Video");
 if (!path) {

  tb_dp_port_enable(in, 0);
  goto err_free;
 }
 tunnel->paths[TB_DP_VIDEO_PATH_OUT] = path;
 tb_dp_init_video_path(tunnel->paths[TB_DP_VIDEO_PATH_OUT], 1);

 path = tb_path_discover(in, TB_DP_AUX_TX_HOPID, ((void*)0), -1, ((void*)0), "AUX TX");
 if (!path)
  goto err_deactivate;
 tunnel->paths[TB_DP_AUX_PATH_OUT] = path;
 tb_dp_init_aux_path(tunnel->paths[TB_DP_AUX_PATH_OUT]);

 path = tb_path_discover(tunnel->dst_port, -1, in, TB_DP_AUX_RX_HOPID,
    &port, "AUX RX");
 if (!path)
  goto err_deactivate;
 tunnel->paths[TB_DP_AUX_PATH_IN] = path;
 tb_dp_init_aux_path(tunnel->paths[TB_DP_AUX_PATH_IN]);


 if (!tb_port_is_dpout(tunnel->dst_port)) {
  tb_port_warn(in, "path does not end on a DP adapter, cleaning up\n");
  goto err_deactivate;
 }

 if (!tb_dp_port_is_enabled(tunnel->dst_port))
  goto err_deactivate;

 if (!tb_dp_port_hpd_is_active(tunnel->dst_port))
  goto err_deactivate;

 if (port != tunnel->src_port) {
  tb_tunnel_warn(tunnel, "path is not complete, cleaning up\n");
  goto err_deactivate;
 }

 tb_tunnel_dbg(tunnel, "discovered\n");
 return tunnel;

err_deactivate:
 tb_tunnel_deactivate(tunnel);
err_free:
 tb_tunnel_free(tunnel);

 return ((void*)0);
}
