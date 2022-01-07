
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_tunnel {struct tb_port* dst_port; struct tb_port* src_port; struct tb_path** paths; int activate; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;


 int TB_PCI_HOPID ;
 size_t TB_PCI_PATH_DOWN ;
 size_t TB_PCI_PATH_UP ;
 int TB_TUNNEL_PCI ;
 struct tb_path* tb_path_discover (struct tb_port*,int,struct tb_port*,int,struct tb_port**,char*) ;
 int tb_pci_activate ;
 int tb_pci_init_path (struct tb_path*) ;
 int tb_pci_port_enable (struct tb_port*,int) ;
 int tb_pci_port_is_enabled (struct tb_port*) ;
 int tb_port_is_pcie_up (struct tb_port*) ;
 int tb_port_warn (struct tb_port*,char*) ;
 struct tb_tunnel* tb_tunnel_alloc (struct tb*,int,int ) ;
 int tb_tunnel_dbg (struct tb_tunnel*,char*) ;
 int tb_tunnel_deactivate (struct tb_tunnel*) ;
 int tb_tunnel_free (struct tb_tunnel*) ;
 int tb_tunnel_warn (struct tb_tunnel*,char*) ;

struct tb_tunnel *tb_tunnel_discover_pci(struct tb *tb, struct tb_port *down)
{
 struct tb_tunnel *tunnel;
 struct tb_path *path;

 if (!tb_pci_port_is_enabled(down))
  return ((void*)0);

 tunnel = tb_tunnel_alloc(tb, 2, TB_TUNNEL_PCI);
 if (!tunnel)
  return ((void*)0);

 tunnel->activate = tb_pci_activate;
 tunnel->src_port = down;






 path = tb_path_discover(down, TB_PCI_HOPID, ((void*)0), -1,
    &tunnel->dst_port, "PCIe Up");
 if (!path) {

  tb_pci_port_enable(down, 0);
  goto err_free;
 }
 tunnel->paths[TB_PCI_PATH_UP] = path;
 tb_pci_init_path(tunnel->paths[TB_PCI_PATH_UP]);

 path = tb_path_discover(tunnel->dst_port, -1, down, TB_PCI_HOPID, ((void*)0),
    "PCIe Down");
 if (!path)
  goto err_deactivate;
 tunnel->paths[TB_PCI_PATH_DOWN] = path;
 tb_pci_init_path(tunnel->paths[TB_PCI_PATH_DOWN]);


 if (!tb_port_is_pcie_up(tunnel->dst_port)) {
  tb_port_warn(tunnel->dst_port,
        "path does not end on a PCIe adapter, cleaning up\n");
  goto err_deactivate;
 }

 if (down != tunnel->src_port) {
  tb_tunnel_warn(tunnel, "path is not complete, cleaning up\n");
  goto err_deactivate;
 }

 if (!tb_pci_port_is_enabled(tunnel->dst_port)) {
  tb_tunnel_warn(tunnel,
          "tunnel is not fully activated, cleaning up\n");
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
