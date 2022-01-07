
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct pvscsi_adapter {int hw_lock; } ;
struct Scsi_Host {int host_no; } ;
struct TYPE_2__ {int id; struct Scsi_Host* host; } ;


 int KERN_INFO ;
 int SUCCESS ;
 int ll_device_reset (struct pvscsi_adapter*,int ) ;
 int pvscsi_process_completion_ring (struct pvscsi_adapter*) ;
 int pvscsi_process_request_ring (struct pvscsi_adapter*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int ) ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pvscsi_device_reset(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *host = cmd->device->host;
 struct pvscsi_adapter *adapter = shost_priv(host);
 unsigned long flags;

 scmd_printk(KERN_INFO, cmd, "SCSI device reset on scsi%u:%u\n",
      host->host_no, cmd->device->id);






 spin_lock_irqsave(&adapter->hw_lock, flags);

 pvscsi_process_request_ring(adapter);
 ll_device_reset(adapter, cmd->device->id);
 pvscsi_process_completion_ring(adapter);

 spin_unlock_irqrestore(&adapter->hw_lock, flags);

 return SUCCESS;
}
