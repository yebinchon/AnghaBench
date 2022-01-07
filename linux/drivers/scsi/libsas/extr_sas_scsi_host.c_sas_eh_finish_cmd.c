
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int eh_entry; TYPE_1__* device; } ;
struct sas_task {int dummy; } ;
struct sas_ha_struct {int eh_done_q; int eh_ata_q; } ;
struct domain_device {int dummy; } ;
struct TYPE_2__ {int host; } ;


 struct sas_ha_struct* SHOST_TO_SAS_HA (int ) ;
 struct sas_task* TO_SAS_TASK (struct scsi_cmnd*) ;
 struct domain_device* cmd_to_domain_dev (struct scsi_cmnd*) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int list_move_tail (int *,int *) ;
 int sas_end_task (struct scsi_cmnd*,struct sas_task*) ;
 int scsi_eh_finish_cmd (struct scsi_cmnd*,int *) ;

__attribute__((used)) static void sas_eh_finish_cmd(struct scsi_cmnd *cmd)
{
 struct sas_ha_struct *sas_ha = SHOST_TO_SAS_HA(cmd->device->host);
 struct domain_device *dev = cmd_to_domain_dev(cmd);
 struct sas_task *task = TO_SAS_TASK(cmd);





 sas_end_task(cmd, task);

 if (dev_is_sata(dev)) {



  list_move_tail(&cmd->eh_entry, &sas_ha->eh_ata_q);
  return;
 }





 scsi_eh_finish_cmd(cmd, &sas_ha->eh_done_q);
}
