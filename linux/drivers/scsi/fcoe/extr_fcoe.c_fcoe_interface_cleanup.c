
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fcoe_interface {struct net_device* netdev; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct TYPE_2__ {int host; } ;


 int THIS_MODULE ;
 int dev_put (struct net_device*) ;
 int fcoe_ctlr_destroy (struct fcoe_ctlr*) ;
 struct fcoe_ctlr* fcoe_to_ctlr (struct fcoe_interface*) ;
 int module_put (int ) ;
 int scsi_host_put (int ) ;

__attribute__((used)) static void fcoe_interface_cleanup(struct fcoe_interface *fcoe)
{
 struct net_device *netdev = fcoe->netdev;
 struct fcoe_ctlr *fip = fcoe_to_ctlr(fcoe);



 fcoe_ctlr_destroy(fip);
 scsi_host_put(fip->lp->host);
 dev_put(netdev);
 module_put(THIS_MODULE);
}
