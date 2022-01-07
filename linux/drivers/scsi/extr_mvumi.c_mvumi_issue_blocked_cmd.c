
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mvumi_hba {TYPE_4__* shost; int fw_outstanding; TYPE_3__* pdev; int tag_pool; int ** tag_cmd; int int_cmd_wait_q; TYPE_1__* instancet; } ;
struct mvumi_cmd {scalar_t__ cmd_status; int queue_pointer; TYPE_2__* frame; int sync_cmd; } ;
struct TYPE_8__ {int host_lock; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {size_t tag; } ;
struct TYPE_5__ {int (* fire_cmd ) (struct mvumi_hba*,struct mvumi_cmd*) ;} ;


 int BUG_ON (int) ;
 int HZ ;
 int MVUMI_INTERNAL_CMD_WAIT_TIME ;
 scalar_t__ REQ_STATUS_PENDING ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*,...) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct mvumi_hba*,struct mvumi_cmd*) ;
 int tag_release_one (struct mvumi_hba*,int *,size_t) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int mvumi_issue_blocked_cmd(struct mvumi_hba *mhba,
      struct mvumi_cmd *cmd)
{
 unsigned long flags;

 cmd->cmd_status = REQ_STATUS_PENDING;

 if (atomic_read(&cmd->sync_cmd)) {
  dev_err(&mhba->pdev->dev,
   "last blocked cmd not finished, sync_cmd = %d\n",
      atomic_read(&cmd->sync_cmd));
  BUG_ON(1);
  return -1;
 }
 atomic_inc(&cmd->sync_cmd);
 spin_lock_irqsave(mhba->shost->host_lock, flags);
 mhba->instancet->fire_cmd(mhba, cmd);
 spin_unlock_irqrestore(mhba->shost->host_lock, flags);

 wait_event_timeout(mhba->int_cmd_wait_q,
  (cmd->cmd_status != REQ_STATUS_PENDING),
  MVUMI_INTERNAL_CMD_WAIT_TIME * HZ);


 if (atomic_read(&cmd->sync_cmd)) {
  spin_lock_irqsave(mhba->shost->host_lock, flags);
  atomic_dec(&cmd->sync_cmd);
  if (mhba->tag_cmd[cmd->frame->tag]) {
   mhba->tag_cmd[cmd->frame->tag] = ((void*)0);
   dev_warn(&mhba->pdev->dev, "TIMEOUT:release tag [%d]\n",
       cmd->frame->tag);
   tag_release_one(mhba, &mhba->tag_pool, cmd->frame->tag);
  }
  if (!list_empty(&cmd->queue_pointer)) {
   dev_warn(&mhba->pdev->dev,
    "TIMEOUT:A internal command doesn't send!\n");
   list_del_init(&cmd->queue_pointer);
  } else
   atomic_dec(&mhba->fw_outstanding);

  spin_unlock_irqrestore(mhba->shost->host_lock, flags);
 }
 return 0;
}
