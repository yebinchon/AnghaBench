
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int list; } ;
struct TYPE_2__ {int parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct tb_port {int dummy; } ;
struct tb_cm {int tunnel_list; } ;
struct tb {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int TB_TYPE_PCIE_UP ;
 int list_add_tail (int *,int *) ;
 struct tb_port* tb_find_pcie_down (struct tb_switch*,struct tb_port*) ;
 struct tb_port* tb_find_port (struct tb_switch*,int ) ;
 struct tb_port* tb_port_at (int ,struct tb_switch*) ;
 int tb_port_info (struct tb_port*,char*) ;
 struct tb_cm* tb_priv (struct tb*) ;
 int tb_route (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;
 scalar_t__ tb_tunnel_activate (struct tb_tunnel*) ;
 struct tb_tunnel* tb_tunnel_alloc_pci (struct tb*,struct tb_port*,struct tb_port*) ;
 int tb_tunnel_free (struct tb_tunnel*) ;

__attribute__((used)) static int tb_tunnel_pci(struct tb *tb, struct tb_switch *sw)
{
 struct tb_port *up, *down, *port;
 struct tb_cm *tcm = tb_priv(tb);
 struct tb_switch *parent_sw;
 struct tb_tunnel *tunnel;

 up = tb_find_port(sw, TB_TYPE_PCIE_UP);
 if (!up)
  return 0;





 parent_sw = tb_to_switch(sw->dev.parent);
 port = tb_port_at(tb_route(sw), parent_sw);
 down = tb_find_pcie_down(parent_sw, port);
 if (!down)
  return 0;

 tunnel = tb_tunnel_alloc_pci(tb, up, down);
 if (!tunnel)
  return -ENOMEM;

 if (tb_tunnel_activate(tunnel)) {
  tb_port_info(up,
        "PCIe tunnel activation failed, aborting\n");
  tb_tunnel_free(tunnel);
  return -EIO;
 }

 list_add_tail(&tunnel->list, &tcm->tunnel_list);
 return 0;
}
