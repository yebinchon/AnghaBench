
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_task {struct ata_queued_cmd* uldd_task; } ;
struct completion {int dummy; } ;
struct ata_queued_cmd {struct completion* private_data; int err_mask; int flags; TYPE_1__* scsicmd; } ;
struct TYPE_2__ {int request; } ;


 int AC_ERR_TIMEOUT ;
 int ATA_QCFLAG_ACTIVE ;
 int ATA_QCFLAG_FAILED ;
 int blk_abort_request (int ) ;
 int complete (struct completion*) ;

void sas_ata_task_abort(struct sas_task *task)
{
 struct ata_queued_cmd *qc = task->uldd_task;
 struct completion *waiting;


 if (qc->scsicmd) {
  blk_abort_request(qc->scsicmd->request);
  return;
 }


 qc->flags &= ~ATA_QCFLAG_ACTIVE;
 qc->flags |= ATA_QCFLAG_FAILED;
 qc->err_mask |= AC_ERR_TIMEOUT;
 waiting = qc->private_data;
 complete(waiting);
}
