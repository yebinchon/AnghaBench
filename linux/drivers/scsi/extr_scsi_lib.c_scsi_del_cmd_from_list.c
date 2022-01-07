
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int list_lock; struct Scsi_Host* host; } ;
struct scsi_cmnd {int list; struct scsi_device* device; } ;
struct Scsi_Host {scalar_t__ use_cmd_list; } ;


 int BUG_ON (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void scsi_del_cmd_from_list(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct Scsi_Host *shost = sdev->host;
 unsigned long flags;

 if (shost->use_cmd_list) {
  spin_lock_irqsave(&sdev->list_lock, flags);
  BUG_ON(list_empty(&cmd->list));
  list_del_init(&cmd->list);
  spin_unlock_irqrestore(&sdev->list_lock, flags);
 }
}
