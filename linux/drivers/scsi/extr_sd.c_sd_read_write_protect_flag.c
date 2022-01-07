
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_mode_data {int device_specific; } ;
struct scsi_disk {int write_prot; scalar_t__ first_scan; int disk; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ use_192_bytes_for_3f; scalar_t__ skip_ms_page_3f; } ;


 int KERN_DEBUG ;
 int KERN_NOTICE ;
 int KERN_WARNING ;
 int scsi_status_is_good (int) ;
 int sd_do_mode_sense (struct scsi_device*,int ,int,unsigned char*,int,struct scsi_mode_data*,int *) ;
 int sd_first_printk (int ,struct scsi_disk*,char*) ;
 int sd_printk (int ,struct scsi_disk*,char*,...) ;
 int set_disk_ro (int ,int) ;

__attribute__((used)) static void
sd_read_write_protect_flag(struct scsi_disk *sdkp, unsigned char *buffer)
{
 int res;
 struct scsi_device *sdp = sdkp->device;
 struct scsi_mode_data data;
 int old_wp = sdkp->write_prot;

 set_disk_ro(sdkp->disk, 0);
 if (sdp->skip_ms_page_3f) {
  sd_first_printk(KERN_NOTICE, sdkp, "Assuming Write Enabled\n");
  return;
 }

 if (sdp->use_192_bytes_for_3f) {
  res = sd_do_mode_sense(sdp, 0, 0x3F, buffer, 192, &data, ((void*)0));
 } else {





  res = sd_do_mode_sense(sdp, 0, 0x3F, buffer, 4, &data, ((void*)0));







  if (!scsi_status_is_good(res))
   res = sd_do_mode_sense(sdp, 0, 0, buffer, 4, &data, ((void*)0));




  if (!scsi_status_is_good(res))
   res = sd_do_mode_sense(sdp, 0, 0x3F, buffer, 255,
            &data, ((void*)0));
 }

 if (!scsi_status_is_good(res)) {
  sd_first_printk(KERN_WARNING, sdkp,
     "Test WP failed, assume Write Enabled\n");
 } else {
  sdkp->write_prot = ((data.device_specific & 0x80) != 0);
  set_disk_ro(sdkp->disk, sdkp->write_prot);
  if (sdkp->first_scan || old_wp != sdkp->write_prot) {
   sd_printk(KERN_NOTICE, sdkp, "Write Protect is %s\n",
      sdkp->write_prot ? "on" : "off");
   sd_printk(KERN_DEBUG, sdkp, "Mode Sense: %4ph\n", buffer);
  }
 }
}
