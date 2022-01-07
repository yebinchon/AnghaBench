
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ipr_ioa_cfg {struct ipr_cmnd* reset_cmd; } ;
struct TYPE_6__ {int ioasc; } ;
struct TYPE_8__ {TYPE_2__ hdr; } ;
struct TYPE_7__ {TYPE_4__ ioasa; } ;
struct ipr_cmnd {scalar_t__ (* job_step_failed ) (struct ipr_cmnd*) ;scalar_t__ (* job_step ) (struct ipr_cmnd*) ;TYPE_1__* hrrq; int queue; TYPE_3__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_5__ {int hrrq_free_q; } ;


 scalar_t__ IPR_IOASC_SENSE_KEY (scalar_t__) ;
 scalar_t__ IPR_RC_JOB_CONTINUE ;
 scalar_t__ IPR_RC_JOB_RETURN ;
 scalar_t__ be32_to_cpu (int ) ;
 int ipr_reinit_ipr_cmnd (struct ipr_cmnd*) ;
 scalar_t__ ipr_reset_cmd_failed (struct ipr_cmnd*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ stub1 (struct ipr_cmnd*) ;
 scalar_t__ stub2 (struct ipr_cmnd*) ;

__attribute__((used)) static void ipr_reset_ioa_job(struct ipr_cmnd *ipr_cmd)
{
 u32 rc, ioasc;
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 do {
  ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

  if (ioa_cfg->reset_cmd != ipr_cmd) {




   list_add_tail(&ipr_cmd->queue,
     &ipr_cmd->hrrq->hrrq_free_q);
   return;
  }

  if (IPR_IOASC_SENSE_KEY(ioasc)) {
   rc = ipr_cmd->job_step_failed(ipr_cmd);
   if (rc == IPR_RC_JOB_RETURN)
    return;
  }

  ipr_reinit_ipr_cmnd(ipr_cmd);
  ipr_cmd->job_step_failed = ipr_reset_cmd_failed;
  rc = ipr_cmd->job_step(ipr_cmd);
 } while (rc == IPR_RC_JOB_CONTINUE);
}
