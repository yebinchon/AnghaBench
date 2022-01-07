
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct cxgbit_sock {int txq; int ppodq; int write_seq; int lock; scalar_t__ lock_owner; TYPE_1__ com; int ack_waitq; } ;


 scalar_t__ CSK_STATE_ESTABLISHED ;
 int __kfree_skb (struct sk_buff*) ;
 int __skb_queue_purge (int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int current ;
 int cxgbit_lock_sock (struct cxgbit_sock*) ;
 int cxgbit_push_tx_frames (struct cxgbit_sock*) ;
 scalar_t__ cxgbit_skcb_tx_extralen (struct sk_buff*) ;
 int cxgbit_unlock_sock (struct cxgbit_sock*) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_splice_tail_init (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int cxgbit_queue_skb(struct cxgbit_sock *csk, struct sk_buff *skb)
{
 int ret = 0;

 wait_event_interruptible(csk->ack_waitq, cxgbit_lock_sock(csk));

 if (unlikely((csk->com.state != CSK_STATE_ESTABLISHED) ||
       signal_pending(current))) {
  __kfree_skb(skb);
  __skb_queue_purge(&csk->ppodq);
  ret = -1;
  spin_lock_bh(&csk->lock);
  if (csk->lock_owner) {
   spin_unlock_bh(&csk->lock);
   goto unlock;
  }
  spin_unlock_bh(&csk->lock);
  return ret;
 }

 csk->write_seq += skb->len +
     cxgbit_skcb_tx_extralen(skb);

 skb_queue_splice_tail_init(&csk->ppodq, &csk->txq);
 __skb_queue_tail(&csk->txq, skb);
 cxgbit_push_tx_frames(csk);

unlock:
 cxgbit_unlock_sock(csk);
 return ret;
}
