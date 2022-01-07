
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {struct tb_port* ports; } ;
struct tb_regs_hop {size_t out_port; int next_hop; int enable; } ;
struct tb_port {struct tb_port* remote; struct tb_switch* sw; } ;


 int TB_CFG_HOPS ;
 int TB_PATH_MAX_HOPS ;
 int tb_port_read (struct tb_port*,struct tb_regs_hop*,int ,int,int) ;
 int tb_port_warn (struct tb_port*,char*,int) ;

__attribute__((used)) static struct tb_port *tb_path_find_dst_port(struct tb_port *src, int src_hopid,
          int dst_hopid)
{
 struct tb_port *port, *out_port = ((void*)0);
 struct tb_regs_hop hop;
 struct tb_switch *sw;
 int i, ret, hopid;

 hopid = src_hopid;
 port = src;

 for (i = 0; port && i < TB_PATH_MAX_HOPS; i++) {
  sw = port->sw;

  ret = tb_port_read(port, &hop, TB_CFG_HOPS, 2 * hopid, 2);
  if (ret) {
   tb_port_warn(port, "failed to read path at %d\n", hopid);
   return ((void*)0);
  }

  if (!hop.enable)
   return ((void*)0);

  out_port = &sw->ports[hop.out_port];
  hopid = hop.next_hop;
  port = out_port->remote;
 }

 return out_port && hopid == dst_hopid ? out_port : ((void*)0);
}
