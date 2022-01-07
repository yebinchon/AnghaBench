
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct cxgbit_sock {TYPE_1__ rxq; } ;


 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int skb_queue_splice_init (TYPE_1__*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool cxgbit_rxq_len(struct cxgbit_sock *csk, struct sk_buff_head *rxq)
{
 spin_lock_bh(&csk->rxq.lock);
 if (skb_queue_len(&csk->rxq)) {
  skb_queue_splice_init(&csk->rxq, rxq);
  spin_unlock_bh(&csk->rxq.lock);
  return 1;
 }
 spin_unlock_bh(&csk->rxq.lock);
 return 0;
}
