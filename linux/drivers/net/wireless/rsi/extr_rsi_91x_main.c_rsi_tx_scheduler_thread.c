
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rsi_hw {int (* determine_event_timeout ) (struct rsi_hw*) ;} ;
struct TYPE_2__ {int completion; int event; int thread_done; } ;
struct rsi_common {TYPE_1__ tx_thread; scalar_t__ init_done; struct rsi_hw* priv; } ;


 int EVENT_WAIT_FOREVER ;
 scalar_t__ atomic_read (int *) ;
 int complete_and_exit (int *,int ) ;
 int rsi_core_qos_processor (struct rsi_common*) ;
 int rsi_reset_event (int *) ;
 int rsi_wait_event (int *,int ) ;
 int stub1 (struct rsi_hw*) ;

__attribute__((used)) static void rsi_tx_scheduler_thread(struct rsi_common *common)
{
 struct rsi_hw *adapter = common->priv;
 u32 timeout = EVENT_WAIT_FOREVER;

 do {
  if (adapter->determine_event_timeout)
   timeout = adapter->determine_event_timeout(adapter);
  rsi_wait_event(&common->tx_thread.event, timeout);
  rsi_reset_event(&common->tx_thread.event);

  if (common->init_done)
   rsi_core_qos_processor(common);
 } while (atomic_read(&common->tx_thread.thread_done) == 0);
 complete_and_exit(&common->tx_thread.completion, 0);
}
