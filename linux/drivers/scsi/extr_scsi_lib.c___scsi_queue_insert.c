
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {int request; scalar_t__ result; struct scsi_device* device; } ;


 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int blk_mq_requeue_request (int ,int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ;
 int scsi_device_unbusy (struct scsi_device*) ;
 int scsi_set_blocked (struct scsi_cmnd*,int) ;

__attribute__((used)) static void __scsi_queue_insert(struct scsi_cmnd *cmd, int reason, bool unbusy)
{
 struct scsi_device *device = cmd->device;

 SCSI_LOG_MLQUEUE(1, scmd_printk(KERN_INFO, cmd,
  "Inserting command %p into mlqueue\n", cmd));

 scsi_set_blocked(cmd, reason);





 if (unbusy)
  scsi_device_unbusy(device);







 cmd->result = 0;

 blk_mq_requeue_request(cmd->request, 1);
}
