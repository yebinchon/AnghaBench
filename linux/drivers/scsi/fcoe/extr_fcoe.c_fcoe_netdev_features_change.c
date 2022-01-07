
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; scalar_t__ fcoe_ddp_xid; scalar_t__ gso_max_size; } ;
struct fc_lport {int sg_supp; int crc_offload; int seq_offload; int lro_enabled; int lp_mutex; scalar_t__ lro_xid; scalar_t__ lso_max; } ;


 int FCOE_NETDEV_DBG (struct net_device*,char*,...) ;
 int NETIF_F_FCOE_CRC ;
 int NETIF_F_FSO ;
 int NETIF_F_SG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_netdev_features_change(struct fc_lport *lport,
     struct net_device *netdev)
{
 mutex_lock(&lport->lp_mutex);

 if (netdev->features & NETIF_F_SG)
  lport->sg_supp = 1;
 else
  lport->sg_supp = 0;

 if (netdev->features & NETIF_F_FCOE_CRC) {
  lport->crc_offload = 1;
  FCOE_NETDEV_DBG(netdev, "Supports FCCRC offload\n");
 } else {
  lport->crc_offload = 0;
 }

 if (netdev->features & NETIF_F_FSO) {
  lport->seq_offload = 1;
  lport->lso_max = netdev->gso_max_size;
  FCOE_NETDEV_DBG(netdev, "Supports LSO for max len 0x%x\n",
    lport->lso_max);
 } else {
  lport->seq_offload = 0;
  lport->lso_max = 0;
 }

 if (netdev->fcoe_ddp_xid) {
  lport->lro_enabled = 1;
  lport->lro_xid = netdev->fcoe_ddp_xid;
  FCOE_NETDEV_DBG(netdev, "Supports LRO for max xid 0x%x\n",
    lport->lro_xid);
 } else {
  lport->lro_enabled = 0;
  lport->lro_xid = 0;
 }

 mutex_unlock(&lport->lp_mutex);
}
