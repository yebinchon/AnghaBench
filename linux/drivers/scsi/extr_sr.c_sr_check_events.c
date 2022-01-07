
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int asc; } ;
struct scsi_cd {unsigned int get_event_changed; int ignore_get_event; int tur_changed; int media_present; scalar_t__ tur_mismatch; TYPE_1__* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;
struct TYPE_3__ {int changed; } ;


 int CDSL_CURRENT ;
 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 int KERN_WARNING ;
 int MAX_RETRIES ;
 int SR_TIMEOUT ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 scalar_t__ scsi_status_is_good (int) ;
 int scsi_test_unit_ready (TYPE_1__*,int ,int ,struct scsi_sense_hdr*) ;
 unsigned int sr_get_events (TYPE_1__*) ;
 int sr_printk (int ,struct scsi_cd*,char*) ;

__attribute__((used)) static unsigned int sr_check_events(struct cdrom_device_info *cdi,
        unsigned int clearing, int slot)
{
 struct scsi_cd *cd = cdi->handle;
 bool last_present;
 struct scsi_sense_hdr sshdr;
 unsigned int events;
 int ret;


 if (CDSL_CURRENT != slot)
  return 0;

 events = sr_get_events(cd->device);
 cd->get_event_changed |= events & DISK_EVENT_MEDIA_CHANGE;







 if (cd->ignore_get_event) {
  events &= ~DISK_EVENT_MEDIA_CHANGE;
  goto do_tur;
 }






 if (cd->device->changed) {
  events |= DISK_EVENT_MEDIA_CHANGE;
  cd->device->changed = 0;
  cd->tur_changed = 1;
 }

 if (!(clearing & DISK_EVENT_MEDIA_CHANGE))
  return events;
do_tur:

 last_present = cd->media_present;
 ret = scsi_test_unit_ready(cd->device, SR_TIMEOUT, MAX_RETRIES, &sshdr);






 cd->media_present = scsi_status_is_good(ret) ||
  (scsi_sense_valid(&sshdr) && sshdr.asc != 0x3a);

 if (last_present != cd->media_present)
  cd->device->changed = 1;

 if (cd->device->changed) {
  events |= DISK_EVENT_MEDIA_CHANGE;
  cd->device->changed = 0;
  cd->tur_changed = 1;
 }

 if (cd->ignore_get_event)
  return events;


 if (!cd->tur_changed) {
  if (cd->get_event_changed) {
   if (cd->tur_mismatch++ > 8) {
    sr_printk(KERN_WARNING, cd,
       "GET_EVENT and TUR disagree continuously, suppress GET_EVENT events\n");
    cd->ignore_get_event = 1;
   }
  } else {
   cd->tur_mismatch = 0;
  }
 }
 cd->tur_changed = 0;
 cd->get_event_changed = 0;

 return events;
}
