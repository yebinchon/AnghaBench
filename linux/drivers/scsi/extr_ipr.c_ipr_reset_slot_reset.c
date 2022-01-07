
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int reset_work_q; } ;
struct ipr_cmnd {int job_step; int work; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int INIT_WORK (int *,int ) ;
 int IPR_RC_JOB_RETURN ;
 int LEAVE ;
 int ipr_reset_reset_work ;
 int ipr_reset_slot_reset_done ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int ipr_reset_slot_reset(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 ENTER;
 INIT_WORK(&ipr_cmd->work, ipr_reset_reset_work);
 queue_work(ioa_cfg->reset_work_q, &ipr_cmd->work);
 ipr_cmd->job_step = ipr_reset_slot_reset_done;
 LEAVE;
 return IPR_RC_JOB_RETURN;
}
