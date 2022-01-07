
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int chip_rev_id; int ndev; int port; int func; } ;
struct net_device {int dev_addr; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_info (struct ql_adapter*,int ,int ,char*,int ,...) ;
 int probe ;

__attribute__((used)) static void ql_display_dev_info(struct net_device *ndev)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 netif_info(qdev, probe, qdev->ndev,
     "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, "
     "XG Roll = %d, XG Rev = %d.\n",
     qdev->func,
     qdev->port,
     qdev->chip_rev_id & 0x0000000f,
     qdev->chip_rev_id >> 4 & 0x0000000f,
     qdev->chip_rev_id >> 8 & 0x0000000f,
     qdev->chip_rev_id >> 12 & 0x0000000f);
 netif_info(qdev, probe, qdev->ndev,
     "MAC address %pM\n", ndev->dev_addr);
}
