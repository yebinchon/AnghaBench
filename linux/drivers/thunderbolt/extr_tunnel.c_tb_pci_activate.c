
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_tunnel {int dst_port; int src_port; } ;


 int tb_pci_port_enable (int ,int) ;
 scalar_t__ tb_port_is_pcie_up (int ) ;

__attribute__((used)) static int tb_pci_activate(struct tb_tunnel *tunnel, bool activate)
{
 int res;

 res = tb_pci_port_enable(tunnel->src_port, activate);
 if (res)
  return res;

 if (tb_port_is_pcie_up(tunnel->dst_port))
  return tb_pci_port_enable(tunnel->dst_port, activate);

 return 0;
}
