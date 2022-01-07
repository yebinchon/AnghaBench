
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct pvscsi_adapter {int use_msg; int hw_lock; int workqueue; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int KERN_INFO ;
 int SUCCESS ;
 int flush_workqueue (int ) ;
 int ll_adapter_reset (struct pvscsi_adapter*) ;
 int pvscsi_process_completion_ring (struct pvscsi_adapter*) ;
 int pvscsi_process_request_ring (struct pvscsi_adapter*) ;
 int pvscsi_reset_all (struct pvscsi_adapter*) ;
 int pvscsi_setup_all_rings (struct pvscsi_adapter*) ;
 int pvscsi_unmask_intr (struct pvscsi_adapter*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pvscsi_host_reset(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *host = cmd->device->host;
 struct pvscsi_adapter *adapter = shost_priv(host);
 unsigned long flags;
 bool use_msg;

 scmd_printk(KERN_INFO, cmd, "SCSI Host reset\n");

 spin_lock_irqsave(&adapter->hw_lock, flags);

 use_msg = adapter->use_msg;

 if (use_msg) {
  adapter->use_msg = 0;
  spin_unlock_irqrestore(&adapter->hw_lock, flags);





  flush_workqueue(adapter->workqueue);
  spin_lock_irqsave(&adapter->hw_lock, flags);
 }







 pvscsi_process_request_ring(adapter);

 ll_adapter_reset(adapter);
 pvscsi_process_completion_ring(adapter);

 pvscsi_reset_all(adapter);
 adapter->use_msg = use_msg;
 pvscsi_setup_all_rings(adapter);
 pvscsi_unmask_intr(adapter);

 spin_unlock_irqrestore(&adapter->hw_lock, flags);

 return SUCCESS;
}
