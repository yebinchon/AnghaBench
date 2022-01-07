
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {unsigned int queue_depth; int device_busy; int device_blocked; } ;
struct request_queue {int dummy; } ;


 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static inline int scsi_dev_queue_ready(struct request_queue *q,
      struct scsi_device *sdev)
{
 unsigned int busy;

 busy = atomic_inc_return(&sdev->device_busy) - 1;
 if (atomic_read(&sdev->device_blocked)) {
  if (busy)
   goto out_dec;




  if (atomic_dec_return(&sdev->device_blocked) > 0)
   goto out_dec;
  SCSI_LOG_MLQUEUE(3, sdev_printk(KERN_INFO, sdev,
       "unblocking device at zero depth\n"));
 }

 if (busy >= sdev->queue_depth)
  goto out_dec;

 return 1;
out_dec:
 atomic_dec(&sdev->device_busy);
 return 0;
}
