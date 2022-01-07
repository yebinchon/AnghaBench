
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_lport {int dummy; } ;


 struct fcoe_interface* fcoe_hostlist_lookup_port (struct net_device const*) ;
 struct fcoe_ctlr* fcoe_to_ctlr (struct fcoe_interface*) ;

__attribute__((used)) static struct fc_lport *fcoe_hostlist_lookup(const struct net_device *netdev)
{
 struct fcoe_ctlr *ctlr;
 struct fcoe_interface *fcoe;

 fcoe = fcoe_hostlist_lookup_port(netdev);
 ctlr = fcoe_to_ctlr(fcoe);
 return (fcoe) ? ctlr->lp : ((void*)0);
}
