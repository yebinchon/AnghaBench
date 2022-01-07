
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_1__ config; } ;
struct tb_port {int port; } ;


 int TB_TYPE_PCIE_DOWN ;
 scalar_t__ WARN_ON (int) ;
 struct tb_port* tb_find_unused_port (struct tb_switch*,int ) ;
 int tb_pci_port_is_enabled (struct tb_port*) ;
 int tb_phy_port_from_link (int ) ;
 int tb_port_is_pcie_down (struct tb_port*) ;
 int tb_route (struct tb_switch*) ;
 scalar_t__ tb_switch_is_cr (struct tb_switch*) ;
 scalar_t__ tb_switch_is_fr (struct tb_switch*) ;

__attribute__((used)) static struct tb_port *tb_find_pcie_down(struct tb_switch *sw,
      const struct tb_port *port)
{





 if (!tb_route(sw)) {
  int phy_port = tb_phy_port_from_link(port->port);
  int index;





  if (tb_switch_is_cr(sw))
   index = !phy_port ? 6 : 7;
  else if (tb_switch_is_fr(sw))
   index = !phy_port ? 6 : 8;
  else
   goto out;


  if (WARN_ON(index > sw->config.max_port_number))
   goto out;
  if (WARN_ON(!tb_port_is_pcie_down(&sw->ports[index])))
   goto out;
  if (WARN_ON(tb_pci_port_is_enabled(&sw->ports[index])))
   goto out;

  return &sw->ports[index];
 }

out:
 return tb_find_unused_port(sw, TB_TYPE_PCIE_DOWN);
}
