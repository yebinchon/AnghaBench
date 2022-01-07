
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ handler; } ;


 int scsi_dh_handler_detach (struct scsi_device*) ;

void scsi_dh_release_device(struct scsi_device *sdev)
{
 if (sdev->handler)
  scsi_dh_handler_detach(sdev);
}
