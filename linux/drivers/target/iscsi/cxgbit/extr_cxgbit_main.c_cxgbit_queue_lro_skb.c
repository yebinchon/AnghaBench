
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct cxgbit_sock {int waitq; TYPE_1__ rxq; } ;


 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int skb_queue_len (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void cxgbit_queue_lro_skb(struct cxgbit_sock *csk, struct sk_buff *skb)
{
 bool wakeup_thread = 0;

 spin_lock(&csk->rxq.lock);
 __skb_queue_tail(&csk->rxq, skb);
 if (skb_queue_len(&csk->rxq) == 1)
  wakeup_thread = 1;
 spin_unlock(&csk->rxq.lock);

 if (wakeup_thread)
  wake_up(&csk->waitq);
}
