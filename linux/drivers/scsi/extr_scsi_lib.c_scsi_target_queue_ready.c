
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {unsigned int can_queue; int target_busy; int target_blocked; struct scsi_device* starget_sdev_user; scalar_t__ single_lun; } ;
struct scsi_device {int starved_entry; } ;
struct Scsi_Host {int host_lock; int starved_list; } ;


 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_move_tail (int *,int *) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int starget_printk (int ,struct scsi_target*,char*) ;

__attribute__((used)) static inline int scsi_target_queue_ready(struct Scsi_Host *shost,
        struct scsi_device *sdev)
{
 struct scsi_target *starget = scsi_target(sdev);
 unsigned int busy;

 if (starget->single_lun) {
  spin_lock_irq(shost->host_lock);
  if (starget->starget_sdev_user &&
      starget->starget_sdev_user != sdev) {
   spin_unlock_irq(shost->host_lock);
   return 0;
  }
  starget->starget_sdev_user = sdev;
  spin_unlock_irq(shost->host_lock);
 }

 if (starget->can_queue <= 0)
  return 1;

 busy = atomic_inc_return(&starget->target_busy) - 1;
 if (atomic_read(&starget->target_blocked) > 0) {
  if (busy)
   goto starved;




  if (atomic_dec_return(&starget->target_blocked) > 0)
   goto out_dec;

  SCSI_LOG_MLQUEUE(3, starget_printk(KERN_INFO, starget,
     "unblocking target at zero depth\n"));
 }

 if (busy >= starget->can_queue)
  goto starved;

 return 1;

starved:
 spin_lock_irq(shost->host_lock);
 list_move_tail(&sdev->starved_entry, &shost->starved_list);
 spin_unlock_irq(shost->host_lock);
out_dec:
 if (starget->can_queue > 0)
  atomic_dec(&starget->target_busy);
 return 0;
}
