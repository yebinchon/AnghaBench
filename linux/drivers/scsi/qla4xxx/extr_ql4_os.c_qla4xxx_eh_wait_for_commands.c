
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_target {int dummy; } ;
struct scsi_qla_host {TYPE_1__* host; } ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct TYPE_2__ {int can_queue; } ;


 int qla4xxx_eh_wait_on_command (struct scsi_qla_host*,struct scsi_cmnd*) ;
 struct scsi_cmnd* scsi_host_find_tag (TYPE_1__*,int) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;

__attribute__((used)) static int qla4xxx_eh_wait_for_commands(struct scsi_qla_host *ha,
     struct scsi_target *stgt,
     struct scsi_device *sdev)
{
 int cnt;
 int status = 0;
 struct scsi_cmnd *cmd;





 for (cnt = 0; cnt < ha->host->can_queue; cnt++) {
  cmd = scsi_host_find_tag(ha->host, cnt);
  if (cmd && stgt == scsi_target(cmd->device) &&
      (!sdev || sdev == cmd->device)) {
   if (!qla4xxx_eh_wait_on_command(ha, cmd)) {
    status++;
    break;
   }
  }
 }
 return status;
}
