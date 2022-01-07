
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int openers; scalar_t__ write_prot; int media_present; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ removable; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;


 int ENOMEDIUM ;
 int ENXIO ;
 int EROFS ;
 int FMODE_NDELAY ;
 int FMODE_WRITE ;
 int KERN_INFO ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SCSI_REMOVAL_PREVENT ;
 int atomic_inc_return (int *) ;
 int check_disk_change (struct block_device*) ;
 scalar_t__ scsi_block_when_processing_errors (struct scsi_device*) ;
 int scsi_device_online (struct scsi_device*) ;
 struct scsi_disk* scsi_disk_get (int ) ;
 int scsi_disk_put (struct scsi_disk*) ;
 int scsi_set_medium_removal (struct scsi_device*,int ) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static int sd_open(struct block_device *bdev, fmode_t mode)
{
 struct scsi_disk *sdkp = scsi_disk_get(bdev->bd_disk);
 struct scsi_device *sdev;
 int retval;

 if (!sdkp)
  return -ENXIO;

 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp, "sd_open\n"));

 sdev = sdkp->device;





 retval = -ENXIO;
 if (!scsi_block_when_processing_errors(sdev))
  goto error_out;

 if (sdev->removable || sdkp->write_prot)
  check_disk_change(bdev);




 retval = -ENOMEDIUM;
 if (sdev->removable && !sdkp->media_present && !(mode & FMODE_NDELAY))
  goto error_out;





 retval = -EROFS;
 if (sdkp->write_prot && (mode & FMODE_WRITE))
  goto error_out;







 retval = -ENXIO;
 if (!scsi_device_online(sdev))
  goto error_out;

 if ((atomic_inc_return(&sdkp->openers) == 1) && sdev->removable) {
  if (scsi_block_when_processing_errors(sdev))
   scsi_set_medium_removal(sdev, SCSI_REMOVAL_PREVENT);
 }

 return 0;

error_out:
 scsi_disk_put(sdkp);
 return retval;
}
