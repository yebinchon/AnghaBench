
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_rx_stats {int mac_time; int bFirstMPDU; scalar_t__ bIsAMPDU; } ;
struct r8192_priv {int LastRxDescTSF; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_update_rx_pkt_timestamp(struct net_device *dev,
        struct rtllib_rx_stats *stats)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (stats->bIsAMPDU && !stats->bFirstMPDU)
  stats->mac_time = priv->LastRxDescTSF;
 else
  priv->LastRxDescTSF = stats->mac_time;
}
