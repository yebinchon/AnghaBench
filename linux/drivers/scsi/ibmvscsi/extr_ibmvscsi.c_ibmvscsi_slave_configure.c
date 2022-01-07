
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; int allow_restart; int request_queue; struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; } ;


 int HZ ;
 scalar_t__ TYPE_DISK ;
 int blk_queue_rq_timeout (int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvscsi_slave_configure(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;
 unsigned long lock_flags = 0;

 spin_lock_irqsave(shost->host_lock, lock_flags);
 if (sdev->type == TYPE_DISK) {
  sdev->allow_restart = 1;
  blk_queue_rq_timeout(sdev->request_queue, 120 * HZ);
 }
 spin_unlock_irqrestore(shost->host_lock, lock_flags);
 return 0;
}
