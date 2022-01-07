
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int ascq; int asc; } ;
struct scsi_device {int changed; int removable; int lockable; } ;


 char ALLOW_MEDIUM_REMOVAL ;
 int DMA_NONE ;
 scalar_t__ DRIVER_SENSE ;

 int KERN_INFO ;

 int SCSI_LOG_IOCTL (int,int ) ;

 scalar_t__ driver_byte (int) ;
 int scsi_execute_req (struct scsi_device*,char*,int ,int *,int ,struct scsi_sense_hdr*,int,int,int *) ;
 int scsi_print_sense_hdr (struct scsi_device*,int *,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;

__attribute__((used)) static int ioctl_internal_command(struct scsi_device *sdev, char *cmd,
      int timeout, int retries)
{
 int result;
 struct scsi_sense_hdr sshdr;

 SCSI_LOG_IOCTL(1, sdev_printk(KERN_INFO, sdev,
          "Trying ioctl with scsi command %d\n", *cmd));

 result = scsi_execute_req(sdev, cmd, DMA_NONE, ((void*)0), 0,
      &sshdr, timeout, retries, ((void*)0));

 SCSI_LOG_IOCTL(2, sdev_printk(KERN_INFO, sdev,
          "Ioctl returned  0x%x\n", result));

 if (driver_byte(result) == DRIVER_SENSE &&
     scsi_sense_valid(&sshdr)) {
  switch (sshdr.sense_key) {
  case 130:
   if (cmd[0] == ALLOW_MEDIUM_REMOVAL)
    sdev->lockable = 0;
   else
    sdev_printk(KERN_INFO, sdev,
         "ioctl_internal_command: "
         "ILLEGAL REQUEST "
         "asc=0x%x ascq=0x%x\n",
         sshdr.asc, sshdr.ascq);
   break;
  case 129:
   if (sdev->removable)
    break;

  case 128:
   if (sdev->removable) {
    sdev->changed = 1;
    result = 0;
    break;
   }

  default:
   sdev_printk(KERN_INFO, sdev,
        "ioctl_internal_command return code = %x\n",
        result);
   scsi_print_sense_hdr(sdev, ((void*)0), &sshdr);
   break;
  }
 }

 SCSI_LOG_IOCTL(2, sdev_printk(KERN_INFO, sdev,
          "IOCTL Releasing command\n"));
 return result;
}
