
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; int allow_restart; struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; } ;


 scalar_t__ TYPE_DISK ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_slave_configure(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;
 unsigned long flags = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 if (sdev->type == TYPE_DISK)
  sdev->allow_restart = 1;
 spin_unlock_irqrestore(shost->host_lock, flags);
 return 0;
}
