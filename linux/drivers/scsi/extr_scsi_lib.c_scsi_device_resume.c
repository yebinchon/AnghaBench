
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ sdev_state; int state_mutex; int request_queue; int * quiesced_by; } ;


 scalar_t__ SDEV_QUIESCE ;
 int SDEV_RUNNING ;
 int blk_clear_pm_only (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;

void scsi_device_resume(struct scsi_device *sdev)
{




 mutex_lock(&sdev->state_mutex);
 if (sdev->quiesced_by) {
  sdev->quiesced_by = ((void*)0);
  blk_clear_pm_only(sdev->request_queue);
 }
 if (sdev->sdev_state == SDEV_QUIESCE)
  scsi_device_set_state(sdev, SDEV_RUNNING);
 mutex_unlock(&sdev->state_mutex);
}
