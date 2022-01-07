
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int openers; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ removable; } ;
struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int KERN_INFO ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SCSI_REMOVAL_ALLOW ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ scsi_block_when_processing_errors (struct scsi_device*) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 int scsi_disk_put (struct scsi_disk*) ;
 int scsi_set_medium_removal (struct scsi_device*,int ) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static void sd_release(struct gendisk *disk, fmode_t mode)
{
 struct scsi_disk *sdkp = scsi_disk(disk);
 struct scsi_device *sdev = sdkp->device;

 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp, "sd_release\n"));

 if (atomic_dec_return(&sdkp->openers) == 0 && sdev->removable) {
  if (scsi_block_when_processing_errors(sdev))
   scsi_set_medium_removal(sdev, SCSI_REMOVAL_ALLOW);
 }

 scsi_disk_put(sdkp);
}
