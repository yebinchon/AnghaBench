
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int scsi_del_cmd_from_list (struct scsi_cmnd*) ;
 int scsi_mq_free_sgtables (struct scsi_cmnd*) ;
 int scsi_uninit_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_mq_uninit_cmd(struct scsi_cmnd *cmd)
{
 scsi_mq_free_sgtables(cmd);
 scsi_uninit_cmd(cmd);
 scsi_del_cmd_from_list(cmd);
}
