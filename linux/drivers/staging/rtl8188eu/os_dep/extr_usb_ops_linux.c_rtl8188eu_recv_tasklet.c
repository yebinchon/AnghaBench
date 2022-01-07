
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct recv_priv {int free_recv_skb_queue; int rx_skb_queue; } ;
struct adapter {scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; struct recv_priv recvpriv; } ;


 int DBG_88E (char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int recvbuf2recvframe (struct adapter*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_tail_pointer (struct sk_buff*) ;

void rtl8188eu_recv_tasklet(void *priv)
{
 struct sk_buff *pskb;
 struct adapter *adapt = priv;
 struct recv_priv *precvpriv = &adapt->recvpriv;

 while (((void*)0) != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
  if ((adapt->bDriverStopped) || (adapt->bSurpriseRemoved)) {
   DBG_88E("recv_tasklet => bDriverStopped or bSurpriseRemoved\n");
   dev_kfree_skb_any(pskb);
   break;
  }
  recvbuf2recvframe(adapt, pskb);
  skb_reset_tail_pointer(pskb);
  pskb->len = 0;
  skb_queue_tail(&precvpriv->free_recv_skb_queue, pskb);
 }
}
