
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct ethsw_port_priv {int idx; TYPE_1__* ethsw_data; } ;
struct TYPE_4__ {int name; int id; } ;
struct TYPE_3__ {int dpsw_handle; int mc_io; } ;


 int ETHSW_NUM_COUNTERS ;
 int dpsw_if_get_counter (int ,int ,int ,int ,int ,int *) ;
 TYPE_2__* ethsw_ethtool_counters ;
 int netdev_err (struct net_device*,char*,int ,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ethsw_ethtool_get_stats(struct net_device *netdev,
        struct ethtool_stats *stats,
        u64 *data)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int i, err;

 for (i = 0; i < ETHSW_NUM_COUNTERS; i++) {
  err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
       port_priv->ethsw_data->dpsw_handle,
       port_priv->idx,
       ethsw_ethtool_counters[i].id,
       &data[i]);
  if (err)
   netdev_err(netdev, "dpsw_if_get_counter[%s] err %d\n",
       ethsw_ethtool_counters[i].name, err);
 }
}
