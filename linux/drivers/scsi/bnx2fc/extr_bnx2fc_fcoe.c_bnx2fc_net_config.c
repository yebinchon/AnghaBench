
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct fcoe_port {int timer; scalar_t__ fcoe_pending_queue_active; int fcoe_pending_queue; struct bnx2fc_interface* priv; } ;
struct fcoe_ctlr {int ctl_src_addr; } ;
struct fc_lport {int vport; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {TYPE_2__* phys_dev; } ;
struct TYPE_4__ {TYPE_1__* ethtool_ops; } ;
struct TYPE_3__ {int get_pauseparam; } ;


 int BNX2FC_HBA_DBG (struct fc_lport*,char*,int ) ;
 int BNX2FC_MFS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NETDEV_FCOE_WWNN ;
 int NETDEV_FCOE_WWPN ;
 struct fcoe_ctlr* bnx2fc_to_ctlr (struct bnx2fc_interface*) ;
 scalar_t__ fc_set_mfs (struct fc_lport*,int ) ;
 int fc_set_wwnn (struct fc_lport*,int ) ;
 int fc_set_wwpn (struct fc_lport*,int ) ;
 scalar_t__ fcoe_get_wwn (struct net_device*,int *,int ) ;
 int fcoe_link_speed_update (struct fc_lport*) ;
 int fcoe_queue_timer ;
 int fcoe_wwn_from_mac (int ,int,int ) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int bnx2fc_net_config(struct fc_lport *lport, struct net_device *netdev)
{
 struct bnx2fc_hba *hba;
 struct bnx2fc_interface *interface;
 struct fcoe_ctlr *ctlr;
 struct fcoe_port *port;
 u64 wwnn, wwpn;

 port = lport_priv(lport);
 interface = port->priv;
 ctlr = bnx2fc_to_ctlr(interface);
 hba = interface->hba;


 if (!hba->phys_dev->ethtool_ops ||
     !hba->phys_dev->ethtool_ops->get_pauseparam)
  return -EOPNOTSUPP;

 if (fc_set_mfs(lport, BNX2FC_MFS))
  return -EINVAL;

 skb_queue_head_init(&port->fcoe_pending_queue);
 port->fcoe_pending_queue_active = 0;
 timer_setup(&port->timer, fcoe_queue_timer, 0);

 fcoe_link_speed_update(lport);

 if (!lport->vport) {
  if (fcoe_get_wwn(netdev, &wwnn, NETDEV_FCOE_WWNN))
   wwnn = fcoe_wwn_from_mac(ctlr->ctl_src_addr,
       1, 0);
  BNX2FC_HBA_DBG(lport, "WWNN = 0x%llx\n", wwnn);
  fc_set_wwnn(lport, wwnn);

  if (fcoe_get_wwn(netdev, &wwpn, NETDEV_FCOE_WWPN))
   wwpn = fcoe_wwn_from_mac(ctlr->ctl_src_addr,
       2, 0);

  BNX2FC_HBA_DBG(lport, "WWPN = 0x%llx\n", wwpn);
  fc_set_wwpn(lport, wwpn);
 }

 return 0;
}
