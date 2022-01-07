
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_status_struct {int stat; int resp; } ;
struct sas_task {int (* task_done ) (struct sas_task*) ;struct task_status_struct task_status; struct domain_device* dev; } ;
struct hisi_sas_tmf_task {int dummy; } ;
struct hisi_sas_dq {int lock; } ;
struct hisi_hba {TYPE_1__* hw; int sem; int flags; struct device* dev; } ;
struct domain_device {scalar_t__ dev_type; struct asd_sas_port* port; } ;
struct device {int dummy; } ;
struct asd_sas_port {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* start_delivery ) (struct hisi_sas_dq*) ;} ;


 int ECOMM ;
 int EINVAL ;
 int HISI_SAS_REJECT_CMD_BIT ;
 int SAS_PHY_DOWN ;
 scalar_t__ SAS_SATA_DEV ;
 int SAS_TASK_UNDELIVERED ;
 int dev_err (struct device*,char*,int) ;
 struct hisi_hba* dev_to_hisi_hba (struct domain_device*) ;
 int down (int *) ;
 int hisi_sas_task_prep (struct sas_task*,struct hisi_sas_dq**,int,struct hisi_sas_tmf_task*,int*) ;
 scalar_t__ in_softirq () ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sas_task*) ;
 int stub2 (struct hisi_sas_dq*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int up (int *) ;

__attribute__((used)) static int hisi_sas_task_exec(struct sas_task *task, gfp_t gfp_flags,
         bool is_tmf, struct hisi_sas_tmf_task *tmf)
{
 u32 rc;
 u32 pass = 0;
 unsigned long flags;
 struct hisi_hba *hisi_hba;
 struct device *dev;
 struct domain_device *device = task->dev;
 struct asd_sas_port *sas_port = device->port;
 struct hisi_sas_dq *dq = ((void*)0);

 if (!sas_port) {
  struct task_status_struct *ts = &task->task_status;

  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_PHY_DOWN;




  if (device->dev_type != SAS_SATA_DEV)
   task->task_done(task);
  return -ECOMM;
 }

 hisi_hba = dev_to_hisi_hba(device);
 dev = hisi_hba->dev;

 if (unlikely(test_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags))) {
  if (in_softirq())
   return -EINVAL;

  down(&hisi_hba->sem);
  up(&hisi_hba->sem);
 }


 rc = hisi_sas_task_prep(task, &dq, is_tmf, tmf, &pass);
 if (rc)
  dev_err(dev, "task exec: failed[%d]!\n", rc);

 if (likely(pass)) {
  spin_lock_irqsave(&dq->lock, flags);
  hisi_hba->hw->start_delivery(dq);
  spin_unlock_irqrestore(&dq->lock, flags);
 }

 return rc;
}
