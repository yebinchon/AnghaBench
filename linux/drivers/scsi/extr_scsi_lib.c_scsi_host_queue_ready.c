
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int starved_entry; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {unsigned int can_queue; int host_lock; int starved_list; scalar_t__ host_self_blocked; int host_blocked; int host_busy; } ;


 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int scsi_dec_host_busy (struct Scsi_Host*) ;
 scalar_t__ scsi_host_in_recovery (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static inline int scsi_host_queue_ready(struct request_queue *q,
       struct Scsi_Host *shost,
       struct scsi_device *sdev)
{
 unsigned int busy;

 if (scsi_host_in_recovery(shost))
  return 0;

 busy = atomic_inc_return(&shost->host_busy) - 1;
 if (atomic_read(&shost->host_blocked) > 0) {
  if (busy)
   goto starved;




  if (atomic_dec_return(&shost->host_blocked) > 0)
   goto out_dec;

  SCSI_LOG_MLQUEUE(3,
   shost_printk(KERN_INFO, shost,
         "unblocking host at zero depth\n"));
 }

 if (shost->can_queue > 0 && busy >= shost->can_queue)
  goto starved;
 if (shost->host_self_blocked)
  goto starved;


 if (!list_empty(&sdev->starved_entry)) {
  spin_lock_irq(shost->host_lock);
  if (!list_empty(&sdev->starved_entry))
   list_del_init(&sdev->starved_entry);
  spin_unlock_irq(shost->host_lock);
 }

 return 1;

starved:
 spin_lock_irq(shost->host_lock);
 if (list_empty(&sdev->starved_entry))
  list_add_tail(&sdev->starved_entry, &shost->starved_list);
 spin_unlock_irq(shost->host_lock);
out_dec:
 scsi_dec_host_busy(shost);
 return 0;
}
