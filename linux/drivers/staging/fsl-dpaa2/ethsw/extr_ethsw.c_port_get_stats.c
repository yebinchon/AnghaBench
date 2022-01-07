
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {scalar_t__ tx_dropped; scalar_t__ rx_dropped; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int idx; TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int DPSW_CNT_EGR_BYTE ;
 int DPSW_CNT_EGR_FRAME ;
 int DPSW_CNT_EGR_FRAME_DISCARD ;
 int DPSW_CNT_ING_BYTE ;
 int DPSW_CNT_ING_FLTR_FRAME ;
 int DPSW_CNT_ING_FRAME ;
 int DPSW_CNT_ING_FRAME_DISCARD ;
 int dpsw_if_get_counter (int ,int ,int ,int ,int ,scalar_t__*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void port_get_stats(struct net_device *netdev,
      struct rtnl_link_stats64 *stats)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 u64 tmp;
 int err;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_ING_FRAME, &stats->rx_packets);
 if (err)
  goto error;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_EGR_FRAME, &stats->tx_packets);
 if (err)
  goto error;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_ING_BYTE, &stats->rx_bytes);
 if (err)
  goto error;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_EGR_BYTE, &stats->tx_bytes);
 if (err)
  goto error;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_ING_FRAME_DISCARD,
      &stats->rx_dropped);
 if (err)
  goto error;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_ING_FLTR_FRAME,
      &tmp);
 if (err)
  goto error;
 stats->rx_dropped += tmp;

 err = dpsw_if_get_counter(port_priv->ethsw_data->mc_io, 0,
      port_priv->ethsw_data->dpsw_handle,
      port_priv->idx,
      DPSW_CNT_EGR_FRAME_DISCARD,
      &stats->tx_dropped);
 if (err)
  goto error;

 return;

error:
 netdev_err(netdev, "dpsw_if_get_counter err %d\n", err);
}
