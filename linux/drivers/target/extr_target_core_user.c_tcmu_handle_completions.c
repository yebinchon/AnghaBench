
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len_op; int cmd_id; } ;
struct tcmu_mailbox {scalar_t__ cmd_tail; scalar_t__ cmd_head; TYPE_1__ hdr; } ;
struct tcmu_dev {scalar_t__ cmdr_last_cleaned; int cmd_timer; int inflight_queue; scalar_t__ cmd_time_out; int qfull_queue; int cmdr_size; int flags; int commands; struct tcmu_mailbox* mb_addr; } ;
struct tcmu_cmd_entry {scalar_t__ cmd_tail; scalar_t__ cmd_head; TYPE_1__ hdr; } ;
struct tcmu_cmd {int dummy; } ;


 int CMDR_OFF ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 int TCMU_DEV_BIT_BROKEN ;
 scalar_t__ TCMU_OP_CMD ;
 scalar_t__ TCMU_OP_PAD ;
 int UPDATE_HEAD (int,int ,int ) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int del_timer (int *) ;
 int global_db_count ;
 struct tcmu_cmd* idr_remove (int *,int ) ;
 scalar_t__ list_empty (int *) ;
 int pr_err (char*,...) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int tcmu_flush_dcache_range (struct tcmu_mailbox*,int) ;
 scalar_t__ tcmu_global_max_blocks ;
 int tcmu_handle_completion (struct tcmu_cmd*,struct tcmu_mailbox*) ;
 int tcmu_hdr_get_len (int ) ;
 scalar_t__ tcmu_hdr_get_op (int ) ;
 int tcmu_set_next_deadline (int *,int *) ;
 int tcmu_unmap_work ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned int tcmu_handle_completions(struct tcmu_dev *udev)
{
 struct tcmu_mailbox *mb;
 struct tcmu_cmd *cmd;
 int handled = 0;

 if (test_bit(TCMU_DEV_BIT_BROKEN, &udev->flags)) {
  pr_err("ring broken, not handling completions\n");
  return 0;
 }

 mb = udev->mb_addr;
 tcmu_flush_dcache_range(mb, sizeof(*mb));

 while (udev->cmdr_last_cleaned != READ_ONCE(mb->cmd_tail)) {

  struct tcmu_cmd_entry *entry = (void *) mb + CMDR_OFF + udev->cmdr_last_cleaned;

  tcmu_flush_dcache_range(entry, sizeof(*entry));

  if (tcmu_hdr_get_op(entry->hdr.len_op) == TCMU_OP_PAD) {
   UPDATE_HEAD(udev->cmdr_last_cleaned,
        tcmu_hdr_get_len(entry->hdr.len_op),
        udev->cmdr_size);
   continue;
  }
  WARN_ON(tcmu_hdr_get_op(entry->hdr.len_op) != TCMU_OP_CMD);

  cmd = idr_remove(&udev->commands, entry->hdr.cmd_id);
  if (!cmd) {
   pr_err("cmd_id %u not found, ring is broken\n",
          entry->hdr.cmd_id);
   set_bit(TCMU_DEV_BIT_BROKEN, &udev->flags);
   break;
  }

  tcmu_handle_completion(cmd, entry);

  UPDATE_HEAD(udev->cmdr_last_cleaned,
       tcmu_hdr_get_len(entry->hdr.len_op),
       udev->cmdr_size);

  handled++;
 }

 if (mb->cmd_tail == mb->cmd_head) {

  del_timer(&udev->cmd_timer);

  if (list_empty(&udev->qfull_queue)) {




   if (atomic_read(&global_db_count) >
       tcmu_global_max_blocks)
    schedule_delayed_work(&tcmu_unmap_work, 0);
  }
 } else if (udev->cmd_time_out) {
  tcmu_set_next_deadline(&udev->inflight_queue, &udev->cmd_timer);
 }

 return handled;
}
