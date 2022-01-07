
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcmu_dev {int name; int commands; int cmd_time_out; } ;
struct tcmu_cmd {int queue_entry; struct se_cmd* se_cmd; int flags; int deadline; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {int dummy; } ;


 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_TASK_SET_FULL ;
 int TCMU_CMD_BIT_EXPIRED ;
 int TCMU_CMD_BIT_INFLIGHT ;
 int idr_remove (int *,int) ;
 int jiffies ;
 int list_del_init (int *) ;
 int pr_debug (char*,int,int ,char*) ;
 int set_bit (int ,int *) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int tcmu_free_cmd (struct tcmu_cmd*) ;
 int test_bit (int ,int *) ;
 int time_after (int ,int ) ;

__attribute__((used)) static int tcmu_check_expired_cmd(int id, void *p, void *data)
{
 struct tcmu_cmd *cmd = p;
 struct tcmu_dev *udev = cmd->tcmu_dev;
 u8 scsi_status;
 struct se_cmd *se_cmd;
 bool is_running;

 if (test_bit(TCMU_CMD_BIT_EXPIRED, &cmd->flags))
  return 0;

 if (!time_after(jiffies, cmd->deadline))
  return 0;

 is_running = test_bit(TCMU_CMD_BIT_INFLIGHT, &cmd->flags);
 se_cmd = cmd->se_cmd;

 if (is_running) {




  if (!udev->cmd_time_out)
   return 0;

  set_bit(TCMU_CMD_BIT_EXPIRED, &cmd->flags);



  scsi_status = SAM_STAT_CHECK_CONDITION;
  list_del_init(&cmd->queue_entry);
  cmd->se_cmd = ((void*)0);
 } else {
  list_del_init(&cmd->queue_entry);
  idr_remove(&udev->commands, id);
  tcmu_free_cmd(cmd);
  scsi_status = SAM_STAT_TASK_SET_FULL;
 }

 pr_debug("Timing out cmd %u on dev %s that is %s.\n",
   id, udev->name, is_running ? "inflight" : "queued");

 target_complete_cmd(se_cmd, scsi_status);
 return 0;
}
