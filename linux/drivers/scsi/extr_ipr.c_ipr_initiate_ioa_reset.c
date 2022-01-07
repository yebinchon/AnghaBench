
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {scalar_t__ sdt_state; int hrrq_num; int in_ioa_bringdown; int scsi_unblock; int work_q; TYPE_2__* hrrq; int reset_wait_q; scalar_t__ in_reset_reload; int * reset_cmd; scalar_t__ reset_retries; TYPE_1__* pdev; } ;
typedef enum ipr_shutdown_type { ____Placeholder_ipr_shutdown_type } ipr_shutdown_type ;
struct TYPE_4__ {int ioa_is_dead; int removing_ioa; int _lock; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ ABORT_DUMP ;
 scalar_t__ GET_DUMP ;
 size_t IPR_INIT_HRRQ ;
 scalar_t__ IPR_NUM_RESET_RELOAD_RETRIES ;
 int IPR_SHUTDOWN_NONE ;
 scalar_t__ READ_DUMP ;
 scalar_t__ WAIT_FOR_DUMP ;
 int _ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ,int) ;
 int dev_err (int *,char*) ;
 int ipr_fail_all_ops (struct ipr_ioa_cfg*) ;
 int ipr_reset_shutdown_ioa ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;
 int wmb () ;

__attribute__((used)) static void ipr_initiate_ioa_reset(struct ipr_ioa_cfg *ioa_cfg,
       enum ipr_shutdown_type shutdown_type)
{
 int i;

 if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead)
  return;

 if (ioa_cfg->in_reset_reload) {
  if (ioa_cfg->sdt_state == GET_DUMP)
   ioa_cfg->sdt_state = WAIT_FOR_DUMP;
  else if (ioa_cfg->sdt_state == READ_DUMP)
   ioa_cfg->sdt_state = ABORT_DUMP;
 }

 if (ioa_cfg->reset_retries++ >= IPR_NUM_RESET_RELOAD_RETRIES) {
  dev_err(&ioa_cfg->pdev->dev,
   "IOA taken offline - error recovery failed\n");

  ioa_cfg->reset_retries = 0;
  for (i = 0; i < ioa_cfg->hrrq_num; i++) {
   spin_lock(&ioa_cfg->hrrq[i]._lock);
   ioa_cfg->hrrq[i].ioa_is_dead = 1;
   spin_unlock(&ioa_cfg->hrrq[i]._lock);
  }
  wmb();

  if (ioa_cfg->in_ioa_bringdown) {
   ioa_cfg->reset_cmd = ((void*)0);
   ioa_cfg->in_reset_reload = 0;
   ipr_fail_all_ops(ioa_cfg);
   wake_up_all(&ioa_cfg->reset_wait_q);

   if (!ioa_cfg->hrrq[IPR_INIT_HRRQ].removing_ioa) {
    ioa_cfg->scsi_unblock = 1;
    schedule_work(&ioa_cfg->work_q);
   }
   return;
  } else {
   ioa_cfg->in_ioa_bringdown = 1;
   shutdown_type = IPR_SHUTDOWN_NONE;
  }
 }

 _ipr_initiate_ioa_reset(ioa_cfg, ipr_reset_shutdown_ioa,
    shutdown_type);
}
