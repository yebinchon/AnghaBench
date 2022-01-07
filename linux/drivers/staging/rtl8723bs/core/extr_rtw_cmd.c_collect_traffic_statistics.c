
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {int tx_bytes; int rx_bytes; int cur_tx_bytes; int last_tx_bytes; int cur_rx_bytes; int last_rx_bytes; void* cur_rx_tp; void* cur_tx_tp; int rx_drop; int rx_pkts; int tx_drop; int tx_pkts; } ;
struct dvobj_priv {TYPE_3__ traffic_stat; } ;
struct TYPE_5__ {int rx_bytes; int rx_drop; int rx_pkts; } ;
struct TYPE_4__ {int tx_bytes; int tx_drop; int tx_pkts; } ;
struct adapter {TYPE_2__ recvpriv; TYPE_1__ xmitpriv; } ;


 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;

__attribute__((used)) static void collect_traffic_statistics(struct adapter *padapter)
{
 struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(padapter);


 pdvobjpriv->traffic_stat.tx_bytes = padapter->xmitpriv.tx_bytes;
 pdvobjpriv->traffic_stat.tx_pkts = padapter->xmitpriv.tx_pkts;
 pdvobjpriv->traffic_stat.tx_drop = padapter->xmitpriv.tx_drop;


 pdvobjpriv->traffic_stat.rx_bytes = padapter->recvpriv.rx_bytes;
 pdvobjpriv->traffic_stat.rx_pkts = padapter->recvpriv.rx_pkts;
 pdvobjpriv->traffic_stat.rx_drop = padapter->recvpriv.rx_drop;


 pdvobjpriv->traffic_stat.cur_tx_bytes = pdvobjpriv->traffic_stat.tx_bytes - pdvobjpriv->traffic_stat.last_tx_bytes;
 pdvobjpriv->traffic_stat.cur_rx_bytes = pdvobjpriv->traffic_stat.rx_bytes - pdvobjpriv->traffic_stat.last_rx_bytes;
 pdvobjpriv->traffic_stat.last_tx_bytes = pdvobjpriv->traffic_stat.tx_bytes;
 pdvobjpriv->traffic_stat.last_rx_bytes = pdvobjpriv->traffic_stat.rx_bytes;

 pdvobjpriv->traffic_stat.cur_tx_tp = (u32)(pdvobjpriv->traffic_stat.cur_tx_bytes * 8/2/1024/1024);
 pdvobjpriv->traffic_stat.cur_rx_tp = (u32)(pdvobjpriv->traffic_stat.cur_rx_bytes * 8/2/1024/1024);
}
