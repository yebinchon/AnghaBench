
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_cmnd {int job_step; } ;


 int ENTER ;
 int IPR_RC_JOB_RETURN ;
 int IPR_WAIT_FOR_BIST_TIMEOUT ;
 int LEAVE ;
 int ipr_reset_bist_done ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;

__attribute__((used)) static int ipr_reset_slot_reset_done(struct ipr_cmnd *ipr_cmd)
{
 ENTER;
 ipr_cmd->job_step = ipr_reset_bist_done;
 ipr_reset_start_timer(ipr_cmd, IPR_WAIT_FOR_BIST_TIMEOUT);
 LEAVE;
 return IPR_RC_JOB_RETURN;
}
