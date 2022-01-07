
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int unissued; struct scsi_cmnd* sensing; int autosense; int ses; } ;
struct NCR5380_cmd {int list; } ;


 int list_add (int *,int *) ;
 struct NCR5380_cmd* scsi_cmd_priv (struct scsi_cmnd*) ;
 int scsi_eh_restore_cmnd (struct scsi_cmnd*,int *) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void requeue_cmd(struct Scsi_Host *instance, struct scsi_cmnd *cmd)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 struct NCR5380_cmd *ncmd = scsi_cmd_priv(cmd);

 if (hostdata->sensing == cmd) {
  scsi_eh_restore_cmnd(cmd, &hostdata->ses);
  list_add(&ncmd->list, &hostdata->autosense);
  hostdata->sensing = ((void*)0);
 } else
  list_add(&ncmd->list, &hostdata->unissued);
}
