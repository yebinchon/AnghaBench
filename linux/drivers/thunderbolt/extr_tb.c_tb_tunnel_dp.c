
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int list; } ;
struct TYPE_2__ {int parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct tb_port {struct tb_switch* sw; } ;
struct tb_cm {int tunnel_list; } ;
struct tb {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int TB_TYPE_DP_HDMI_IN ;
 int list_add_tail (int *,int *) ;
 struct tb_port* tb_find_unused_port (struct tb_switch*,int ) ;
 int tb_port_dbg (struct tb_port*,char*) ;
 int tb_port_info (struct tb_port*,char*) ;
 scalar_t__ tb_port_is_enabled (struct tb_port*) ;
 struct tb_cm* tb_priv (struct tb*) ;
 struct tb_switch* tb_to_switch (int ) ;
 scalar_t__ tb_tunnel_activate (struct tb_tunnel*) ;
 struct tb_tunnel* tb_tunnel_alloc_dp (struct tb*,struct tb_port*,struct tb_port*) ;
 int tb_tunnel_free (struct tb_tunnel*) ;

__attribute__((used)) static int tb_tunnel_dp(struct tb *tb, struct tb_port *out)
{
 struct tb_cm *tcm = tb_priv(tb);
 struct tb_switch *sw = out->sw;
 struct tb_tunnel *tunnel;
 struct tb_port *in;

 if (tb_port_is_enabled(out))
  return 0;

 do {
  sw = tb_to_switch(sw->dev.parent);
  if (!sw)
   return 0;
  in = tb_find_unused_port(sw, TB_TYPE_DP_HDMI_IN);
 } while (!in);

 tunnel = tb_tunnel_alloc_dp(tb, in, out);
 if (!tunnel) {
  tb_port_dbg(out, "DP tunnel allocation failed\n");
  return -ENOMEM;
 }

 if (tb_tunnel_activate(tunnel)) {
  tb_port_info(out, "DP tunnel activation failed, aborting\n");
  tb_tunnel_free(tunnel);
  return -EIO;
 }

 list_add_tail(&tunnel->list, &tcm->tunnel_list);
 return 0;
}
