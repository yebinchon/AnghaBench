
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int time_left; } ;
struct ipr_cmnd {TYPE_2__ u; int job_step; TYPE_1__* ioa_cfg; } ;
struct TYPE_3__ {scalar_t__ cfg_locked; } ;


 int IPR_RC_JOB_CONTINUE ;
 int IPR_WAIT_FOR_RESET_TIMEOUT ;
 int ipr_reset_block_config_access_wait ;

__attribute__((used)) static int ipr_reset_block_config_access(struct ipr_cmnd *ipr_cmd)
{
 ipr_cmd->ioa_cfg->cfg_locked = 0;
 ipr_cmd->job_step = ipr_reset_block_config_access_wait;
 ipr_cmd->u.time_left = IPR_WAIT_FOR_RESET_TIMEOUT;
 return IPR_RC_JOB_CONTINUE;
}
