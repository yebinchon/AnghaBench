
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_disk {TYPE_1__* device; scalar_t__ media_present; scalar_t__ WCE; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ manage_start_stop; } ;


 int ENODEV ;
 scalar_t__ ILLEGAL_REQUEST ;
 int KERN_NOTICE ;
 struct scsi_disk* dev_get_drvdata (struct device*) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_start_stop_device (struct scsi_disk*,int ) ;
 int sd_sync_cache (struct scsi_disk*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
{
 struct scsi_disk *sdkp = dev_get_drvdata(dev);
 struct scsi_sense_hdr sshdr;
 int ret = 0;

 if (!sdkp)
  return 0;

 if (sdkp->WCE && sdkp->media_present) {
  sd_printk(KERN_NOTICE, sdkp, "Synchronizing SCSI cache\n");
  ret = sd_sync_cache(sdkp, &sshdr);

  if (ret) {

   if (ret == -ENODEV)
    return 0;

   if (!scsi_sense_valid(&sshdr) ||
       sshdr.sense_key != ILLEGAL_REQUEST)
    return ret;






   ret = 0;
  }
 }

 if (sdkp->device->manage_start_stop) {
  sd_printk(KERN_NOTICE, sdkp, "Stopping disk\n");

  ret = sd_start_stop_device(sdkp, 0);
  if (ignore_stop_errors)
   ret = 0;
 }

 return ret;
}
