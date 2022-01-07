
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct xmit_priv {TYPE_2__* hwxmits; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ wifi_spec; } ;
struct adapter {int pnetdev; TYPE_1__ registrypriv; struct xmit_priv xmitpriv; } ;
struct TYPE_4__ {scalar_t__ accnt; } ;


 scalar_t__ WMM_XMIT_THRESHOLD ;
 scalar_t__ __netif_subqueue_stopped (int ,size_t) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int netif_wake_subqueue (int ,size_t) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;

void rtw_os_pkt_complete(struct adapter *padapter, struct sk_buff *pkt)
{
 u16 queue;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 queue = skb_get_queue_mapping(pkt);
 if (padapter->registrypriv.wifi_spec) {
  if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
      (pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
   netif_wake_subqueue(padapter->pnetdev, queue);
 } else {
  if (__netif_subqueue_stopped(padapter->pnetdev, queue))
   netif_wake_subqueue(padapter->pnetdev, queue);
 }

 dev_kfree_skb_any(pkt);
}
