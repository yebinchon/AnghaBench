
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct xmit_priv {int free_xmitframe_cnt; TYPE_2__* hwxmits; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ wifi_spec; } ;
struct adapter {int pnetdev; TYPE_1__ registrypriv; struct xmit_priv xmitpriv; } ;
struct TYPE_4__ {scalar_t__ accnt; } ;


 scalar_t__ WMM_XMIT_THRESHOLD ;
 int netdev_get_tx_queue (int ,size_t) ;
 int netif_stop_subqueue (int ,size_t) ;
 int netif_tx_queue_stopped (int ) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static void rtw_check_xmit_resource(struct adapter *padapter,
        struct sk_buff *pkt)
{
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 u16 queue;

 queue = skb_get_queue_mapping(pkt);
 if (padapter->registrypriv.wifi_spec) {

  if (pxmitpriv->hwxmits[queue].accnt > WMM_XMIT_THRESHOLD)
   netif_stop_subqueue(padapter->pnetdev, queue);
 } else {
  if (pxmitpriv->free_xmitframe_cnt <= 4) {
   if (!netif_tx_queue_stopped(netdev_get_tx_queue(padapter->pnetdev, queue)))
    netif_stop_subqueue(padapter->pnetdev, queue);
  }
 }
}
