
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int list; } ;
struct fc_lport {int dummy; } ;


 int fcoe_hostlist ;
 struct fcoe_interface* fcoe_hostlist_lookup_port (int ) ;
 int fcoe_netdev (struct fc_lport const*) ;
 int list_add_tail (int *,int *) ;
 struct fcoe_port* lport_priv (struct fc_lport const*) ;

__attribute__((used)) static int fcoe_hostlist_add(const struct fc_lport *lport)
{
 struct fcoe_interface *fcoe;
 struct fcoe_port *port;

 fcoe = fcoe_hostlist_lookup_port(fcoe_netdev(lport));
 if (!fcoe) {
  port = lport_priv(lport);
  fcoe = port->priv;
  list_add_tail(&fcoe->list, &fcoe_hostlist);
 }
 return 0;
}
