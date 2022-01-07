
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fcoe_ctlr_device {int lesb; } ;
struct fcoe_ctlr {int lp; } ;
struct fc_els_lesb {int dummy; } ;


 int __fcoe_get_lesb (int ,struct fc_els_lesb*,struct net_device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 struct net_device* fcoe_get_netdev (int ) ;

void fcoe_ctlr_get_lesb(struct fcoe_ctlr_device *ctlr_dev)
{
 struct fcoe_ctlr *fip = fcoe_ctlr_device_priv(ctlr_dev);
 struct net_device *netdev = fcoe_get_netdev(fip->lp);
 struct fc_els_lesb *fc_lesb;

 fc_lesb = (struct fc_els_lesb *)(&ctlr_dev->lesb);
 __fcoe_get_lesb(fip->lp, fc_lesb, netdev);
}
