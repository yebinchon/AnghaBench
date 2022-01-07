
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int lock; int backlogq; scalar_t__ lock_owner; scalar_t__ rx_credits; int ctrlq_idx; int tid; } ;
struct cpl_rx_data_ack {int dummy; } ;
typedef int (* cxgbit_skcb_rx_backlog_fn ) (struct cxgbit_sock*,struct sk_buff*) ;


 int GFP_KERNEL ;
 int RX_CREDITS_V (scalar_t__) ;
 int RX_DACK_CHANGE_F ;
 int RX_DACK_MODE_V (int) ;
 int __skb_queue_tail (int *,int (*) (struct cxgbit_sock*,struct sk_buff*)) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cxgb_mk_rx_data_ack (struct sk_buff*,int,int ,int ,int) ;
 int cxgbit_send_rx_credits (struct cxgbit_sock*,struct sk_buff*) ;
 int roundup (int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgbit_rx_data_ack(struct cxgbit_sock *csk)
{
 struct sk_buff *skb;
 u32 len = roundup(sizeof(struct cpl_rx_data_ack), 16);
 u32 credit_dack;

 skb = alloc_skb(len, GFP_KERNEL);
 if (!skb)
  return -1;

 credit_dack = RX_DACK_CHANGE_F | RX_DACK_MODE_V(1) |
        RX_CREDITS_V(csk->rx_credits);

 cxgb_mk_rx_data_ack(skb, len, csk->tid, csk->ctrlq_idx,
       credit_dack);

 csk->rx_credits = 0;

 spin_lock_bh(&csk->lock);
 if (csk->lock_owner) {
  cxgbit_skcb_rx_backlog_fn(skb) = cxgbit_send_rx_credits;
  __skb_queue_tail(&csk->backlogq, skb);
  spin_unlock_bh(&csk->lock);
  return 0;
 }

 cxgbit_send_rx_credits(csk, skb);
 spin_unlock_bh(&csk->lock);

 return 0;
}
