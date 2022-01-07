
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int list; } ;
struct fc_lport {int dummy; } ;


 int list_del (int *) ;
 struct fcoe_port* lport_priv (struct fc_lport const*) ;

__attribute__((used)) static void fcoe_hostlist_del(const struct fc_lport *lport)
{
 struct fcoe_interface *fcoe;
 struct fcoe_port *port;

 port = lport_priv(lport);
 fcoe = port->priv;
 list_del(&fcoe->list);
 return;
}
