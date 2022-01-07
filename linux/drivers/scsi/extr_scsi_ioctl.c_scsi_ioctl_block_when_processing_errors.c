
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;


 int EAGAIN ;
 int ENODEV ;
 int SG_SCSI_RESET ;
 int scsi_block_when_processing_errors (struct scsi_device*) ;
 scalar_t__ scsi_host_in_recovery (int ) ;

int scsi_ioctl_block_when_processing_errors(struct scsi_device *sdev, int cmd,
  bool ndelay)
{
 if (cmd == SG_SCSI_RESET && ndelay) {
  if (scsi_host_in_recovery(sdev->host))
   return -EAGAIN;
 } else {
  if (!scsi_block_when_processing_errors(sdev))
   return -ENODEV;
 }

 return 0;
}
