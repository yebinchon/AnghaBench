
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbit_sock {int lro_hskb; int skbq; int ppodq; int backlogq; int rxq; int txq; } ;


 int __kfree_skb (int ) ;
 int __skb_queue_purge (int *) ;
 struct sk_buff* cxgbit_sock_dequeue_wr (struct cxgbit_sock*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void cxgbit_free_skb(struct cxgbit_sock *csk)
{
 struct sk_buff *skb;

 __skb_queue_purge(&csk->txq);
 __skb_queue_purge(&csk->rxq);
 __skb_queue_purge(&csk->backlogq);
 __skb_queue_purge(&csk->ppodq);
 __skb_queue_purge(&csk->skbq);

 while ((skb = cxgbit_sock_dequeue_wr(csk)))
  kfree_skb(skb);

 __kfree_skb(csk->lro_hskb);
}
