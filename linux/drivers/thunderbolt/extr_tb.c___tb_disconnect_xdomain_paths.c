
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tb_xdomain {int route; TYPE_1__ dev; } ;
struct tb_switch {int dummy; } ;
struct tb_port {int dummy; } ;
struct tb {int dummy; } ;


 int TB_TUNNEL_DMA ;
 int tb_free_tunnel (struct tb*,int ,int *,struct tb_port*) ;
 struct tb_port* tb_port_at (int ,struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;

__attribute__((used)) static void __tb_disconnect_xdomain_paths(struct tb *tb, struct tb_xdomain *xd)
{
 struct tb_port *dst_port;
 struct tb_switch *sw;

 sw = tb_to_switch(xd->dev.parent);
 dst_port = tb_port_at(xd->route, sw);






 tb_free_tunnel(tb, TB_TUNNEL_DMA, ((void*)0), dst_port);
}
