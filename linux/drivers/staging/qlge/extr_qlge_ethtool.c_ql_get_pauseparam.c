
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int link_config; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;


 int CFG_PAUSE_STD ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_mb_get_port_cfg (struct ql_adapter*) ;

__attribute__((used)) static void ql_get_pauseparam(struct net_device *netdev,
   struct ethtool_pauseparam *pause)
{
 struct ql_adapter *qdev = netdev_priv(netdev);

 ql_mb_get_port_cfg(qdev);
 if (qdev->link_config & CFG_PAUSE_STD) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
