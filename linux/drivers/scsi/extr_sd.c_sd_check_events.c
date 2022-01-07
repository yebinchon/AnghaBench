
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int member_0; } ;
struct scsi_disk {int media_present; struct scsi_device* device; } ;
struct scsi_device {int changed; } ;
struct gendisk {int dummy; } ;


 int DISK_EVENT_MEDIA_CHANGE ;
 int KERN_INFO ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 scalar_t__ host_byte (int) ;
 scalar_t__ media_not_present (struct scsi_disk*,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_block_when_processing_errors (struct scsi_device*) ;
 int scsi_device_online (struct scsi_device*) ;
 struct scsi_disk* scsi_disk_get (struct gendisk*) ;
 int scsi_disk_put (struct scsi_disk*) ;
 int scsi_test_unit_ready (struct scsi_device*,int ,int ,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int set_media_not_present (struct scsi_disk*) ;

__attribute__((used)) static unsigned int sd_check_events(struct gendisk *disk, unsigned int clearing)
{
 struct scsi_disk *sdkp = scsi_disk_get(disk);
 struct scsi_device *sdp;
 int retval;

 if (!sdkp)
  return 0;

 sdp = sdkp->device;
 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp, "sd_check_events\n"));







 if (!scsi_device_online(sdp)) {
  set_media_not_present(sdkp);
  goto out;
 }
 if (scsi_block_when_processing_errors(sdp)) {
  struct scsi_sense_hdr sshdr = { 0, };

  retval = scsi_test_unit_ready(sdp, SD_TIMEOUT, SD_MAX_RETRIES,
           &sshdr);


  if (host_byte(retval)) {
   set_media_not_present(sdkp);
   goto out;
  }

  if (media_not_present(sdkp, &sshdr))
   goto out;
 }





 if (!sdkp->media_present)
  sdp->changed = 1;
 sdkp->media_present = 1;
out:






 retval = sdp->changed ? DISK_EVENT_MEDIA_CHANGE : 0;
 sdp->changed = 0;
 scsi_disk_put(sdkp);
 return retval;
}
