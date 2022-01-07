
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct hpsa_scsi_dev_t {int removed; int lun; int target; int bus; } ;
struct ctlr_info {int scsi_host; } ;


 int KERN_WARNING ;
 int hpsa_remove_sas_device (struct hpsa_scsi_dev_t*) ;
 int hpsa_show_dev_msg (int ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ;
 int hpsa_wait_for_outstanding_commands_for_dev (struct ctlr_info*,struct hpsa_scsi_dev_t*) ;
 scalar_t__ is_logical_device (struct hpsa_scsi_dev_t*) ;
 struct scsi_device* scsi_device_lookup (int ,int ,int ,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;

__attribute__((used)) static void hpsa_remove_device(struct ctlr_info *h,
   struct hpsa_scsi_dev_t *device)
{
 struct scsi_device *sdev = ((void*)0);

 if (!h->scsi_host)
  return;




 device->removed = 1;
 hpsa_wait_for_outstanding_commands_for_dev(h, device);

 if (is_logical_device(device)) {
  sdev = scsi_device_lookup(h->scsi_host, device->bus,
      device->target, device->lun);
  if (sdev) {
   scsi_remove_device(sdev);
   scsi_device_put(sdev);
  } else {





   hpsa_show_dev_msg(KERN_WARNING, h, device,
     "didn't find device for removal.");
  }
 } else {

  hpsa_remove_sas_device(device);
 }
}
