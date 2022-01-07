
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int (* eh_host_reset_handler ) (struct scsi_cmnd*) ;int skip_settle_delay; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int host_lock; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int FAILED ;
 int HOST_RESET_SETTLE_TIME ;
 int KERN_INFO ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int SUCCESS ;
 int scmd_channel (struct scsi_cmnd*) ;
 int scsi_report_bus_reset (struct Scsi_Host*,int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ssleep (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_host_reset(struct scsi_cmnd *scmd)
{
 unsigned long flags;
 int rtn;
 struct Scsi_Host *host = scmd->device->host;
 struct scsi_host_template *hostt = host->hostt;

 SCSI_LOG_ERROR_RECOVERY(3,
  shost_printk(KERN_INFO, host, "Snd Host RST\n"));

 if (!hostt->eh_host_reset_handler)
  return FAILED;

 rtn = hostt->eh_host_reset_handler(scmd);

 if (rtn == SUCCESS) {
  if (!hostt->skip_settle_delay)
   ssleep(HOST_RESET_SETTLE_TIME);
  spin_lock_irqsave(host->host_lock, flags);
  scsi_report_bus_reset(host, scmd_channel(scmd));
  spin_unlock_irqrestore(host->host_lock, flags);
 }

 return rtn;
}
