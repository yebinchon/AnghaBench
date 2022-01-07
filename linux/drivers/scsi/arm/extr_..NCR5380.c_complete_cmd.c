
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int result; } ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {struct scsi_cmnd* sensing; int ses; } ;


 int DRIVER_SENSE ;
 scalar_t__ GOOD ;
 int NDEBUG_QUEUES ;
 int dsprintk (int ,struct Scsi_Host*,char*,struct scsi_cmnd*) ;
 int scsi_eh_restore_cmnd (struct scsi_cmnd*,int *) ;
 int set_driver_byte (struct scsi_cmnd*,int ) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;
 scalar_t__ status_byte (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void complete_cmd(struct Scsi_Host *instance,
                         struct scsi_cmnd *cmd)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);

 dsprintk(NDEBUG_QUEUES, instance, "complete_cmd: cmd %p\n", cmd);

 if (hostdata->sensing == cmd) {

  if (status_byte(cmd->result) != GOOD) {
   scsi_eh_restore_cmnd(cmd, &hostdata->ses);
  } else {
   scsi_eh_restore_cmnd(cmd, &hostdata->ses);
   set_driver_byte(cmd, DRIVER_SENSE);
  }
  hostdata->sensing = ((void*)0);
 }

 cmd->scsi_done(cmd);
}
