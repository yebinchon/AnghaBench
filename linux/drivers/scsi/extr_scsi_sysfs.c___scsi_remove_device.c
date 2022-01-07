
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct scsi_device {scalar_t__ sdev_state; TYPE_2__* host; int requeue_work; int request_queue; int state_mutex; struct device sdev_dev; struct device sdev_gendev; scalar_t__ is_visible; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int (* slave_destroy ) (struct scsi_device*) ;scalar_t__ sdev_groups; } ;


 scalar_t__ SDEV_CANCEL ;
 scalar_t__ SDEV_DEL ;
 int blk_cleanup_queue (int ) ;
 int bsg_unregister_queue (int ) ;
 int cancel_work_sync (int *) ;
 int device_del (struct device*) ;
 int device_unregister (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int scsi_device_set_state (struct scsi_device*,scalar_t__) ;
 int scsi_start_queue (struct scsi_device*) ;
 int scsi_target (struct scsi_device*) ;
 int scsi_target_reap (int ) ;
 int stub1 (struct scsi_device*) ;
 int sysfs_remove_groups (int *,scalar_t__) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void __scsi_remove_device(struct scsi_device *sdev)
{
 struct device *dev = &sdev->sdev_gendev;
 int res;






 if (sdev->sdev_state == SDEV_DEL)
  return;

 if (sdev->is_visible) {




  mutex_lock(&sdev->state_mutex);





  res = scsi_device_set_state(sdev, SDEV_CANCEL);
  if (res != 0) {
   res = scsi_device_set_state(sdev, SDEV_DEL);
   if (res == 0)
    scsi_start_queue(sdev);
  }
  mutex_unlock(&sdev->state_mutex);

  if (res != 0)
   return;

  if (sdev->host->hostt->sdev_groups)
   sysfs_remove_groups(&sdev->sdev_gendev.kobj,
     sdev->host->hostt->sdev_groups);

  bsg_unregister_queue(sdev->request_queue);
  device_unregister(&sdev->sdev_dev);
  transport_remove_device(dev);
  device_del(dev);
 } else
  put_device(&sdev->sdev_dev);






 mutex_lock(&sdev->state_mutex);
 scsi_device_set_state(sdev, SDEV_DEL);
 mutex_unlock(&sdev->state_mutex);

 blk_cleanup_queue(sdev->request_queue);
 cancel_work_sync(&sdev->requeue_work);

 if (sdev->host->hostt->slave_destroy)
  sdev->host->hostt->slave_destroy(sdev);
 transport_destroy_device(dev);






 scsi_target_reap(scsi_target(sdev));

 put_device(dev);
}
