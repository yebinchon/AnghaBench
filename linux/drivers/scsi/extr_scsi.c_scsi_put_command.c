
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int abort_work; } ;


 int BUG_ON (int ) ;
 int delayed_work_pending (int *) ;
 int scsi_del_cmd_from_list (struct scsi_cmnd*) ;

void scsi_put_command(struct scsi_cmnd *cmd)
{
 scsi_del_cmd_from_list(cmd);
 BUG_ON(delayed_work_pending(&cmd->abort_work));
}
