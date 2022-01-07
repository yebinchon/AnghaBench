
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ quiesced_by; int state_mutex; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;


 int SDEV_QUIESCE ;
 int WARN_ON_ONCE (int) ;
 int blk_clear_pm_only (struct request_queue*) ;
 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_set_pm_only (struct request_queue*) ;
 scalar_t__ current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 int synchronize_rcu () ;

int
scsi_device_quiesce(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;
 int err;






 WARN_ON_ONCE(sdev->quiesced_by && sdev->quiesced_by != current);

 if (sdev->quiesced_by == current)
  return 0;

 blk_set_pm_only(q);

 blk_mq_freeze_queue(q);






 synchronize_rcu();
 blk_mq_unfreeze_queue(q);

 mutex_lock(&sdev->state_mutex);
 err = scsi_device_set_state(sdev, SDEV_QUIESCE);
 if (err == 0)
  sdev->quiesced_by = current;
 else
  blk_clear_pm_only(q);
 mutex_unlock(&sdev->state_mutex);

 return err;
}
