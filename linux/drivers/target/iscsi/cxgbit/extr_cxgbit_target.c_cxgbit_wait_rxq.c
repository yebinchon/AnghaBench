
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int waitq; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int current ;
 scalar_t__ cxgbit_rx_skb (struct cxgbit_sock*,struct sk_buff*) ;
 int cxgbit_rxq_len (struct cxgbit_sock*,struct sk_buff_head*) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int cxgbit_wait_rxq(struct cxgbit_sock *csk)
{
 struct sk_buff *skb;
 struct sk_buff_head rxq;

 skb_queue_head_init(&rxq);

 wait_event_interruptible(csk->waitq, cxgbit_rxq_len(csk, &rxq));

 if (signal_pending(current))
  goto out;

 while ((skb = __skb_dequeue(&rxq))) {
  if (cxgbit_rx_skb(csk, skb))
   goto out;
 }

 return 0;
out:
 __skb_queue_purge(&rxq);
 return -1;
}
