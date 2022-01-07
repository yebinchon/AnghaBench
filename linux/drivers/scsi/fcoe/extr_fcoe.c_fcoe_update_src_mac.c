
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fcoe_port {int * data_src_addr; struct fcoe_interface* priv; } ;
struct fcoe_interface {int netdev; } ;
struct fc_lport {int dummy; } ;


 int ETH_ALEN ;
 int dev_uc_add (int ,int *) ;
 int dev_uc_del (int ,int *) ;
 int is_zero_ether_addr (int *) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void fcoe_update_src_mac(struct fc_lport *lport, u8 *addr)
{
 struct fcoe_port *port = lport_priv(lport);
 struct fcoe_interface *fcoe = port->priv;

 if (!is_zero_ether_addr(port->data_src_addr))
  dev_uc_del(fcoe->netdev, port->data_src_addr);
 if (!is_zero_ether_addr(addr))
  dev_uc_add(fcoe->netdev, addr);
 memcpy(port->data_src_addr, addr, ETH_ALEN);
}
