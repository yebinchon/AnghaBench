
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ resp; int stat; } ;
struct sas_task {int task_state_flags; TYPE_3__ task_status; struct hisi_sas_slot* lldd_task; TYPE_2__* slow_task; int task_done; int task_proto; struct domain_device* dev; } ;
struct hisi_sas_slot {size_t dlvry_queue; int * task; } ;
struct hisi_sas_dq {int dummy; } ;
struct hisi_sas_device {int device_id; } ;
struct hisi_sas_cq {int tasklet; } ;
struct hisi_hba {struct hisi_sas_cq* cq; int debugfs_work; int wq; scalar_t__ debugfs_itct; TYPE_1__* hw; struct device* dev; } ;
struct domain_device {int sas_addr; int tproto; struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct TYPE_9__ {scalar_t__ expires; int function; } ;
struct TYPE_7__ {int completion; TYPE_4__ timer; } ;
struct TYPE_6__ {int prep_abort; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INTERNAL_ABORT_TIMEOUT ;
 int SAS_ADDR (int ) ;
 scalar_t__ SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int TMF_RESP_FUNC_SUCC ;
 int add_timer (TYPE_4__*) ;
 int del_timer (TYPE_4__*) ;
 int dev_dbg (struct device*,char*,int ,struct sas_task*,scalar_t__,int) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ hisi_sas_debugfs_enable ;
 int hisi_sas_internal_abort_task_exec (struct hisi_hba*,int ,struct sas_task*,int,int,struct hisi_sas_dq*) ;
 int hisi_sas_task_done ;
 int hisi_sas_tmf_timedout ;
 scalar_t__ jiffies ;
 int queue_work (int ,int *) ;
 struct sas_task* sas_alloc_slow_task (int ) ;
 int sas_free_task (struct sas_task*) ;
 int tasklet_kill (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
_hisi_sas_internal_task_abort(struct hisi_hba *hisi_hba,
         struct domain_device *device, int abort_flag,
         int tag, struct hisi_sas_dq *dq)
{
 struct sas_task *task;
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 struct device *dev = hisi_hba->dev;
 int res;







 if (!hisi_hba->hw->prep_abort)
  return TMF_RESP_FUNC_FAILED;

 task = sas_alloc_slow_task(GFP_KERNEL);
 if (!task)
  return -ENOMEM;

 task->dev = device;
 task->task_proto = device->tproto;
 task->task_done = hisi_sas_task_done;
 task->slow_task->timer.function = hisi_sas_tmf_timedout;
 task->slow_task->timer.expires = jiffies + INTERNAL_ABORT_TIMEOUT * HZ;
 add_timer(&task->slow_task->timer);

 res = hisi_sas_internal_abort_task_exec(hisi_hba, sas_dev->device_id,
      task, abort_flag, tag, dq);
 if (res) {
  del_timer(&task->slow_task->timer);
  dev_err(dev, "internal task abort: executing internal task failed: %d\n",
   res);
  goto exit;
 }
 wait_for_completion(&task->slow_task->completion);
 res = TMF_RESP_FUNC_FAILED;


 if ((task->task_state_flags & SAS_TASK_STATE_ABORTED)) {
  if (hisi_sas_debugfs_enable && hisi_hba->debugfs_itct)
   queue_work(hisi_hba->wq, &hisi_hba->debugfs_work);

  if (!(task->task_state_flags & SAS_TASK_STATE_DONE)) {
   struct hisi_sas_slot *slot = task->lldd_task;

   if (slot) {
    struct hisi_sas_cq *cq =
     &hisi_hba->cq[slot->dlvry_queue];




    tasklet_kill(&cq->tasklet);
    slot->task = ((void*)0);
   }
   dev_err(dev, "internal task abort: timeout and not done.\n");

   res = -EIO;
   goto exit;
  } else
   dev_err(dev, "internal task abort: timeout.\n");
 }

 if (task->task_status.resp == SAS_TASK_COMPLETE &&
  task->task_status.stat == TMF_RESP_FUNC_COMPLETE) {
  res = TMF_RESP_FUNC_COMPLETE;
  goto exit;
 }

 if (task->task_status.resp == SAS_TASK_COMPLETE &&
  task->task_status.stat == TMF_RESP_FUNC_SUCC) {
  res = TMF_RESP_FUNC_SUCC;
  goto exit;
 }

exit:
 dev_dbg(dev, "internal task abort: task to dev %016llx task=%pK resp: 0x%x sts 0x%x\n",
  SAS_ADDR(device->sas_addr), task,
  task->task_status.resp,
  task->task_status.stat);
 sas_free_task(task);

 return res;
}
