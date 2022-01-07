
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int list_lock; int cmd_list; struct Scsi_Host* host; } ;
struct scsi_cmnd {int list; struct scsi_device* device; } ;
struct Scsi_Host {scalar_t__ use_cmd_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void scsi_add_cmd_to_list(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct Scsi_Host *shost = sdev->host;
 unsigned long flags;

 if (shost->use_cmd_list) {
  spin_lock_irqsave(&sdev->list_lock, flags);
  list_add_tail(&cmd->list, &sdev->cmd_list);
  spin_unlock_irqrestore(&sdev->list_lock, flags);
 }
}
