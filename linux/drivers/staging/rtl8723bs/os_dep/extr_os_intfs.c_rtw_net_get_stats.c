
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int tx_bytes; int tx_drop; int tx_pkts; } ;
struct recv_priv {int rx_bytes; int rx_drop; int rx_pkts; } ;
struct net_device_stats {int rx_bytes; int tx_bytes; int rx_dropped; int tx_dropped; int rx_packets; int tx_packets; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device_stats stats; struct recv_priv recvpriv; struct xmit_priv xmitpriv; } ;


 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *rtw_net_get_stats(struct net_device *pnetdev)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
 struct recv_priv *precvpriv = &(padapter->recvpriv);

 padapter->stats.tx_packets = pxmitpriv->tx_pkts;
 padapter->stats.rx_packets = precvpriv->rx_pkts;
 padapter->stats.tx_dropped = pxmitpriv->tx_drop;
 padapter->stats.rx_dropped = precvpriv->rx_drop;
 padapter->stats.tx_bytes = pxmitpriv->tx_bytes;
 padapter->stats.rx_bytes = precvpriv->rx_bytes;

 return &padapter->stats;
}
