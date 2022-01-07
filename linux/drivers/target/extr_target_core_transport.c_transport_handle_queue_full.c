
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int dev_qf_count; int qf_cmd_lock; } ;
struct se_cmd {TYPE_1__* se_dev; int se_qf_node; int t_state; } ;
struct TYPE_2__ {int qf_work_queue; int qf_cmd_lock; int qf_cmd_list; } ;


 int EAGAIN ;
 int ENOMEM ;
 int TRANSPORT_COMPLETE_QF_ERR ;
 int TRANSPORT_COMPLETE_QF_OK ;
 int TRANSPORT_COMPLETE_QF_WP ;
 int atomic_inc_mb (int *) ;
 int list_add_tail (int *,int *) ;
 int pr_warn_ratelimited (char*,int) ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void transport_handle_queue_full(struct se_cmd *cmd, struct se_device *dev,
     int err, bool write_pending)
{
 if (err == -EAGAIN || err == -ENOMEM) {
  cmd->t_state = (write_pending) ? TRANSPORT_COMPLETE_QF_WP :
       TRANSPORT_COMPLETE_QF_OK;
 } else {
  pr_warn_ratelimited("Got unknown fabric queue status: %d\n", err);
  cmd->t_state = TRANSPORT_COMPLETE_QF_ERR;
 }

 spin_lock_irq(&dev->qf_cmd_lock);
 list_add_tail(&cmd->se_qf_node, &cmd->se_dev->qf_cmd_list);
 atomic_inc_mb(&dev->dev_qf_count);
 spin_unlock_irq(&cmd->se_dev->qf_cmd_lock);

 schedule_work(&cmd->se_dev->qf_work_queue);
}
