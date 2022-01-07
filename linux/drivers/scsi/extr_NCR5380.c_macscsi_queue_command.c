
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int main_task; int work_q; int lock; int unissued; } ;
struct NCR5380_cmd {int list; } ;


 int DID_ERROR ;
 int KERN_DEBUG ;
 int NCR5380_acquire_dma_irq (struct Scsi_Host*) ;
 int NDEBUG_QUEUES ;
 int REQUEST_SENSE ;
 int SCSI_MLQUEUE_HOST_BUSY ;


 int dsprintk (int ,struct Scsi_Host*,char*,struct scsi_cmnd*,char*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 struct NCR5380_cmd* scsi_cmd_priv (struct scsi_cmnd*) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int NCR5380_queue_command(struct Scsi_Host *instance,
                                 struct scsi_cmnd *cmd)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 struct NCR5380_cmd *ncmd = scsi_cmd_priv(cmd);
 unsigned long flags;
 cmd->result = 0;

 if (!NCR5380_acquire_dma_irq(instance))
  return SCSI_MLQUEUE_HOST_BUSY;

 spin_lock_irqsave(&hostdata->lock, flags);
 if (cmd->cmnd[0] == REQUEST_SENSE)
  list_add(&ncmd->list, &hostdata->unissued);
 else
  list_add_tail(&ncmd->list, &hostdata->unissued);

 spin_unlock_irqrestore(&hostdata->lock, flags);

 dsprintk(NDEBUG_QUEUES, instance, "command %p added to %s of queue\n",
          cmd, (cmd->cmnd[0] == REQUEST_SENSE) ? "head" : "tail");


 queue_work(hostdata->work_q, &hostdata->main_task);
 return 0;
}
