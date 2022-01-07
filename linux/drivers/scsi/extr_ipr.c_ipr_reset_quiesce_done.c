
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int dummy; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int ENTER ;
 int IPR_PCII_IOA_TRANS_TO_OPER ;
 int IPR_RC_JOB_CONTINUE ;
 int LEAVE ;
 int ipr_ioa_bringdown_done ;
 int ipr_mask_and_clear_interrupts (struct ipr_ioa_cfg*,int ) ;

__attribute__((used)) static int ipr_reset_quiesce_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 ENTER;
 ipr_cmd->job_step = ipr_ioa_bringdown_done;
 ipr_mask_and_clear_interrupts(ioa_cfg, ~IPR_PCII_IOA_TRANS_TO_OPER);
 LEAVE;
 return IPR_RC_JOB_CONTINUE;
}
