
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct bnx2fc_hba {TYPE_1__ destroy_timer; int flags; int destroy_wait; } ;


 int BNX2FC_FLAG_DESTROY_CMPL ;
 int BNX2FC_FLAG_FW_INIT_DONE ;
 scalar_t__ BNX2FC_FW_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int bnx2fc_destroy_timer ;
 scalar_t__ bnx2fc_send_fw_fcoe_destroy_msg (struct bnx2fc_hba*) ;
 int bnx2fc_unbind_adapter_devices (struct bnx2fc_hba*) ;
 int clear_bit (int ,int *) ;
 int current ;
 int del_timer_sync (TYPE_1__*) ;
 int flush_signals (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void bnx2fc_fw_destroy(struct bnx2fc_hba *hba)
{
 if (test_and_clear_bit(BNX2FC_FLAG_FW_INIT_DONE, &hba->flags)) {
  if (bnx2fc_send_fw_fcoe_destroy_msg(hba) == 0) {
   timer_setup(&hba->destroy_timer, bnx2fc_destroy_timer,
        0);
   hba->destroy_timer.expires = BNX2FC_FW_TIMEOUT +
        jiffies;
   add_timer(&hba->destroy_timer);
   wait_event_interruptible(hba->destroy_wait,
     test_bit(BNX2FC_FLAG_DESTROY_CMPL,
       &hba->flags));
   clear_bit(BNX2FC_FLAG_DESTROY_CMPL, &hba->flags);

   if (signal_pending(current))
    flush_signals(current);

   del_timer_sync(&hba->destroy_timer);
  }
  bnx2fc_unbind_adapter_devices(hba);
 }
}
