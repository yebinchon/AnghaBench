
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int state_mutex; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_internal_device_unblock_nowait (struct scsi_device*,int) ;

__attribute__((used)) static int scsi_internal_device_unblock(struct scsi_device *sdev,
     enum scsi_device_state new_state)
{
 int ret;

 mutex_lock(&sdev->state_mutex);
 ret = scsi_internal_device_unblock_nowait(sdev, new_state);
 mutex_unlock(&sdev->state_mutex);

 return ret;
}
