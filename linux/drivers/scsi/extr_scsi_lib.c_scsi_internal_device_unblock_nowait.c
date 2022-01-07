
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_state; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int EINVAL ;


 int SDEV_CREATED ;




 int scsi_start_queue (struct scsi_device*) ;

int scsi_internal_device_unblock_nowait(struct scsi_device *sdev,
     enum scsi_device_state new_state)
{
 switch (new_state) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }





 switch (sdev->sdev_state) {
 case 133:
 case 128:
  sdev->sdev_state = new_state;
  break;
 case 131:
  if (new_state == 128 ||
      new_state == 130)
   sdev->sdev_state = new_state;
  else
   sdev->sdev_state = SDEV_CREATED;
  break;
 case 132:
 case 130:
  break;
 default:
  return -EINVAL;
 }
 scsi_start_queue(sdev);

 return 0;
}
