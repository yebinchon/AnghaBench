
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int hrrq_num; TYPE_1__* hrrq; } ;
struct ipr_cmnd {int done; TYPE_2__* hrrq; int queue; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_4__ {int hrrq_pending_q; } ;
struct TYPE_3__ {int _lock; scalar_t__ allow_interrupts; } ;


 int IPR_RC_JOB_RETURN ;
 int ipr_reset_ioa_job ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wmb () ;

__attribute__((used)) static int ipr_reset_freeze(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 int i;


 for (i = 0; i < ioa_cfg->hrrq_num; i++) {
  spin_lock(&ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 0;
  spin_unlock(&ioa_cfg->hrrq[i]._lock);
 }
 wmb();
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);
 ipr_cmd->done = ipr_reset_ioa_job;
 return IPR_RC_JOB_RETURN;
}
