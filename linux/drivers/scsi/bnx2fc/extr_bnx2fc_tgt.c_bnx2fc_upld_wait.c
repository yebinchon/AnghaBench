
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_rport {int upld_timer; int flags; int upld_wait; } ;


 int BNX2FC_FLAG_UPLD_REQ_COMPL ;
 scalar_t__ BNX2FC_FW_TIMEOUT ;
 int bnx2fc_upld_timer ;
 int current ;
 int del_timer_sync (int *) ;
 int flush_signals (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ signal_pending (int ) ;
 int test_bit (int ,int *) ;
 int timer_setup (int *,int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void bnx2fc_upld_wait(struct bnx2fc_rport *tgt)
{
 timer_setup(&tgt->upld_timer, bnx2fc_upld_timer, 0);
 mod_timer(&tgt->upld_timer, jiffies + BNX2FC_FW_TIMEOUT);
 wait_event_interruptible(tgt->upld_wait,
     (test_bit(
      BNX2FC_FLAG_UPLD_REQ_COMPL,
      &tgt->flags)));
 if (signal_pending(current))
  flush_signals(current);
 del_timer_sync(&tgt->upld_timer);
}
