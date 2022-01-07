
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ resp; int stat; int residual; } ;
struct TYPE_6__ {int device_control_reg_update; int fis; } ;
struct sas_task {int task_state_flags; TYPE_3__ task_status; struct hisi_sas_slot* lldd_task; TYPE_2__* slow_task; int task_done; int ssp_task; TYPE_1__ ata_task; int task_proto; struct domain_device* dev; } ;
struct hisi_sas_tmf_task {int dummy; } ;
struct hisi_sas_slot {size_t dlvry_queue; int * task; } ;
struct hisi_sas_device {struct hisi_hba* hisi_hba; } ;
struct hisi_sas_cq {int tasklet; } ;
struct hisi_hba {struct hisi_sas_cq* cq; struct device* dev; } ;
struct domain_device {int sas_addr; int tproto; struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct TYPE_9__ {scalar_t__ expires; int function; } ;
struct TYPE_7__ {int completion; TYPE_4__ timer; } ;


 int EIO ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int SAS_ADDR (int ) ;
 scalar_t__ SAS_DATA_OVERRUN ;
 scalar_t__ SAS_DATA_UNDERRUN ;
 scalar_t__ SAS_OPEN_REJECT ;
 scalar_t__ SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int TASK_RETRY ;
 int TASK_TIMEOUT ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int TMF_RESP_FUNC_SUCC ;
 int add_timer (TYPE_4__*) ;
 int del_timer (TYPE_4__*) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int dev_warn (struct device*,char*,...) ;
 int hisi_sas_task_done ;
 int hisi_sas_task_exec (struct sas_task*,int ,int,struct hisi_sas_tmf_task*) ;
 int hisi_sas_tmf_timedout ;
 scalar_t__ jiffies ;
 int memcpy (int *,void*,int ) ;
 struct sas_task* sas_alloc_slow_task (int ) ;
 int sas_free_task (struct sas_task*) ;
 int tasklet_kill (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int hisi_sas_exec_internal_tmf_task(struct domain_device *device,
        void *parameter, u32 para_len,
        struct hisi_sas_tmf_task *tmf)
{
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 struct hisi_hba *hisi_hba = sas_dev->hisi_hba;
 struct device *dev = hisi_hba->dev;
 struct sas_task *task;
 int res, retry;

 for (retry = 0; retry < TASK_RETRY; retry++) {
  task = sas_alloc_slow_task(GFP_KERNEL);
  if (!task)
   return -ENOMEM;

  task->dev = device;
  task->task_proto = device->tproto;

  if (dev_is_sata(device)) {
   task->ata_task.device_control_reg_update = 1;
   memcpy(&task->ata_task.fis, parameter, para_len);
  } else {
   memcpy(&task->ssp_task, parameter, para_len);
  }
  task->task_done = hisi_sas_task_done;

  task->slow_task->timer.function = hisi_sas_tmf_timedout;
  task->slow_task->timer.expires = jiffies + TASK_TIMEOUT * HZ;
  add_timer(&task->slow_task->timer);

  res = hisi_sas_task_exec(task, GFP_KERNEL, 1, tmf);

  if (res) {
   del_timer(&task->slow_task->timer);
   dev_err(dev, "abort tmf: executing internal task failed: %d\n",
    res);
   goto ex_err;
  }

  wait_for_completion(&task->slow_task->completion);
  res = TMF_RESP_FUNC_FAILED;

  if ((task->task_state_flags & SAS_TASK_STATE_ABORTED)) {
   if (!(task->task_state_flags & SAS_TASK_STATE_DONE)) {
    struct hisi_sas_slot *slot = task->lldd_task;

    dev_err(dev, "abort tmf: TMF task timeout and not done\n");
    if (slot) {
     struct hisi_sas_cq *cq =
            &hisi_hba->cq[slot->dlvry_queue];




     tasklet_kill(&cq->tasklet);
     slot->task = ((void*)0);
    }

    goto ex_err;
   } else
    dev_err(dev, "abort tmf: TMF task timeout\n");
  }

  if (task->task_status.resp == SAS_TASK_COMPLETE &&
       task->task_status.stat == TMF_RESP_FUNC_COMPLETE) {
   res = TMF_RESP_FUNC_COMPLETE;
   break;
  }

  if (task->task_status.resp == SAS_TASK_COMPLETE &&
   task->task_status.stat == TMF_RESP_FUNC_SUCC) {
   res = TMF_RESP_FUNC_SUCC;
   break;
  }

  if (task->task_status.resp == SAS_TASK_COMPLETE &&
        task->task_status.stat == SAS_DATA_UNDERRUN) {



   dev_warn(dev, "abort tmf: task to dev %016llx resp: 0x%x sts 0x%x underrun\n",
     SAS_ADDR(device->sas_addr),
     task->task_status.resp,
     task->task_status.stat);
   res = task->task_status.residual;
   break;
  }

  if (task->task_status.resp == SAS_TASK_COMPLETE &&
   task->task_status.stat == SAS_DATA_OVERRUN) {
   dev_warn(dev, "abort tmf: blocked task error\n");
   res = -EMSGSIZE;
   break;
  }

  if (task->task_status.resp == SAS_TASK_COMPLETE &&
      task->task_status.stat == SAS_OPEN_REJECT) {
   dev_warn(dev, "abort tmf: open reject failed\n");
   res = -EIO;
  } else {
   dev_warn(dev, "abort tmf: task to dev %016llx resp: 0x%x status 0x%x\n",
     SAS_ADDR(device->sas_addr),
     task->task_status.resp,
     task->task_status.stat);
  }
  sas_free_task(task);
  task = ((void*)0);
 }
ex_err:
 if (retry == TASK_RETRY)
  dev_warn(dev, "abort tmf: executing internal task failed!\n");
 sas_free_task(task);
 return res;
}
