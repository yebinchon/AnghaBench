
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int allowed; scalar_t__ jiffies_at_alloc; TYPE_1__* device; scalar_t__ result; int eh_entry; } ;
struct request {int timeout; } ;
struct TYPE_2__ {int ioerr_cnt; int iodone_cnt; } ;



 unsigned long HZ ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;

 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_EH_RETRY ;

 int atomic_inc (int *) ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int jiffies ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,unsigned long) ;
 int scsi_decide_disposition (struct scsi_cmnd*) ;
 int scsi_eh_scmd_add (struct scsi_cmnd*) ;
 int scsi_finish_command (struct scsi_cmnd*) ;
 int scsi_log_completion (struct scsi_cmnd*,int) ;
 int scsi_queue_insert (struct scsi_cmnd*,int ) ;
 scalar_t__ time_before (scalar_t__,int ) ;

__attribute__((used)) static void scsi_softirq_done(struct request *rq)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(rq);
 unsigned long wait_for = (cmd->allowed + 1) * rq->timeout;
 int disposition;

 INIT_LIST_HEAD(&cmd->eh_entry);

 atomic_inc(&cmd->device->iodone_cnt);
 if (cmd->result)
  atomic_inc(&cmd->device->ioerr_cnt);

 disposition = scsi_decide_disposition(cmd);
 if (disposition != 128 &&
     time_before(cmd->jiffies_at_alloc + wait_for, jiffies)) {
  scmd_printk(KERN_ERR, cmd,
       "timing out command, waited %lus\n",
       wait_for/HZ);
  disposition = 128;
 }

 scsi_log_completion(cmd, disposition);

 switch (disposition) {
  case 128:
   scsi_finish_command(cmd);
   break;
  case 129:
   scsi_queue_insert(cmd, SCSI_MLQUEUE_EH_RETRY);
   break;
  case 130:
   scsi_queue_insert(cmd, SCSI_MLQUEUE_DEVICE_BUSY);
   break;
  default:
   scsi_eh_scmd_add(cmd);
   break;
 }
}
