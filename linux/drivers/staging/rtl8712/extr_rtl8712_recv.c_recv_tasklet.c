
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct recv_priv {int free_recv_skb_queue; int rx_skb_queue; } ;
struct _adapter {struct recv_priv recvpriv; } ;


 int consume_skb (struct sk_buff*) ;
 int recvbuf2recvframe (struct _adapter*,struct sk_buff*) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static void recv_tasklet(void *priv)
{
 struct sk_buff *pskb;
 struct _adapter *padapter = priv;
 struct recv_priv *precvpriv = &padapter->recvpriv;

 while (((void*)0) != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
  recvbuf2recvframe(padapter, pskb);
  skb_reset_tail_pointer(pskb);
  pskb->len = 0;
  if (!skb_cloned(pskb))
   skb_queue_tail(&precvpriv->free_recv_skb_queue, pskb);
  else
   consume_skb(pskb);
 }
}
