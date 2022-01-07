
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; TYPE_1__* se_tfo; int scsi_status; } ;
struct TYPE_2__ {int (* queue_status ) (struct se_cmd*) ;} ;


 int SAM_STAT_BUSY ;
 int SCF_SCSI_TMR_CDB ;
 int WARN_ON_ONCE (int) ;
 int stub1 (struct se_cmd*) ;
 int trace_target_cmd_complete (struct se_cmd*) ;

int target_send_busy(struct se_cmd *cmd)
{
 WARN_ON_ONCE(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB);

 cmd->scsi_status = SAM_STAT_BUSY;
 trace_target_cmd_complete(cmd);
 return cmd->se_tfo->queue_status(cmd);
}
