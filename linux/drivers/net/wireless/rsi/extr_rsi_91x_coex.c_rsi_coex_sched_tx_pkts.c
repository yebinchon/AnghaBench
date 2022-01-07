
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rsi_coex_ctrl_block {int priv; int * coex_tx_qs; } ;
typedef enum rsi_coex_queues { ____Placeholder_rsi_coex_queues } rsi_coex_queues ;


 int INFO_ZONE ;
 int RSI_COEX_Q_BT ;
 int RSI_COEX_Q_INVALID ;
 int rsi_coex_determine_coex_q (struct rsi_coex_ctrl_block*) ;
 int rsi_dbg (int ,char*,int) ;
 int rsi_send_bt_pkt (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void rsi_coex_sched_tx_pkts(struct rsi_coex_ctrl_block *coex_cb)
{
 enum rsi_coex_queues coex_q = RSI_COEX_Q_INVALID;
 struct sk_buff *skb;

 do {
  coex_q = rsi_coex_determine_coex_q(coex_cb);
  rsi_dbg(INFO_ZONE, "queue = %d\n", coex_q);

  if (coex_q == RSI_COEX_Q_BT) {
   skb = skb_dequeue(&coex_cb->coex_tx_qs[RSI_COEX_Q_BT]);
   rsi_send_bt_pkt(coex_cb->priv, skb);
  }
 } while (coex_q != RSI_COEX_Q_INVALID);
}
