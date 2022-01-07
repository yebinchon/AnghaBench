
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int ioasc; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {int job_step; TYPE_3__ s; } ;


 scalar_t__ IPR_IOASC_IR_INVALID_REQ_TYPE_OR_PKT ;
 int IPR_RC_JOB_CONTINUE ;
 scalar_t__ be32_to_cpu (int ) ;
 int ipr_ioafp_mode_sense_page28 ;
 int ipr_reset_cmd_failed (struct ipr_cmnd*) ;

__attribute__((used)) static int ipr_reset_mode_sense_page24_failed(struct ipr_cmnd *ipr_cmd)
{
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

 if (ioasc == IPR_IOASC_IR_INVALID_REQ_TYPE_OR_PKT) {
  ipr_cmd->job_step = ipr_ioafp_mode_sense_page28;
  return IPR_RC_JOB_CONTINUE;
 }

 return ipr_reset_cmd_failed(ipr_cmd);
}
