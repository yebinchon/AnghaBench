
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rsi_common {scalar_t__ coex_cb; } ;
struct TYPE_2__ {int completion; int event; int thread_done; } ;
struct rsi_coex_ctrl_block {TYPE_1__ coex_tx_thread; } ;


 int EVENT_WAIT_FOREVER ;
 scalar_t__ atomic_read (int *) ;
 int complete_and_exit (int *,int ) ;
 int rsi_coex_sched_tx_pkts (struct rsi_coex_ctrl_block*) ;
 int rsi_reset_event (int *) ;
 int rsi_wait_event (int *,int ) ;

__attribute__((used)) static void rsi_coex_scheduler_thread(struct rsi_common *common)
{
 struct rsi_coex_ctrl_block *coex_cb =
  (struct rsi_coex_ctrl_block *)common->coex_cb;
 u32 timeout = EVENT_WAIT_FOREVER;

 do {
  rsi_wait_event(&coex_cb->coex_tx_thread.event, timeout);
  rsi_reset_event(&coex_cb->coex_tx_thread.event);

  rsi_coex_sched_tx_pkts(coex_cb);
 } while (atomic_read(&coex_cb->coex_tx_thread.thread_done) == 0);

 complete_and_exit(&coex_cb->coex_tx_thread.completion, 0);
}
