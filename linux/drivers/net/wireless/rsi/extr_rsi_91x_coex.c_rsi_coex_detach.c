
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_common {scalar_t__ coex_cb; } ;
struct rsi_coex_ctrl_block {int * coex_tx_qs; int coex_tx_thread; } ;


 int NUM_COEX_TX_QUEUES ;
 int kfree (struct rsi_coex_ctrl_block*) ;
 int rsi_kill_thread (int *) ;
 int skb_queue_purge (int *) ;

void rsi_coex_detach(struct rsi_common *common)
{
 struct rsi_coex_ctrl_block *coex_cb =
  (struct rsi_coex_ctrl_block *)common->coex_cb;
 int cnt;

 rsi_kill_thread(&coex_cb->coex_tx_thread);

 for (cnt = 0; cnt < NUM_COEX_TX_QUEUES; cnt++)
  skb_queue_purge(&coex_cb->coex_tx_qs[cnt]);

 kfree(coex_cb);
}
