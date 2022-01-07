
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_target {int dev; int scsi_level; } ;
struct device {int dummy; } ;
struct Scsi_Host {unsigned int this_id; } ;
typedef enum scsi_scan_mode { ____Placeholder_scsi_scan_mode } scsi_scan_mode ;
typedef int blist_flags_t ;


 int SCAN_WILD_CARD ;
 int SCSI_SCAN_LUN_PRESENT ;
 int SCSI_SCAN_TARGET_PRESENT ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int put_device (int *) ;
 struct scsi_target* scsi_alloc_target (struct device*,unsigned int,unsigned int) ;
 int scsi_autopm_get_target (struct scsi_target*) ;
 int scsi_autopm_put_target (struct scsi_target*) ;
 int scsi_probe_and_add_lun (struct scsi_target*,int ,int *,int *,int,int *) ;
 scalar_t__ scsi_report_lun_scan (struct scsi_target*,int ,int) ;
 int scsi_sequential_lun_scan (struct scsi_target*,int ,int ,int) ;
 int scsi_target_reap (struct scsi_target*) ;

__attribute__((used)) static void __scsi_scan_target(struct device *parent, unsigned int channel,
  unsigned int id, u64 lun, enum scsi_scan_mode rescan)
{
 struct Scsi_Host *shost = dev_to_shost(parent);
 blist_flags_t bflags = 0;
 int res;
 struct scsi_target *starget;

 if (shost->this_id == id)



  return;

 starget = scsi_alloc_target(parent, channel, id);
 if (!starget)
  return;
 scsi_autopm_get_target(starget);

 if (lun != SCAN_WILD_CARD) {



  scsi_probe_and_add_lun(starget, lun, ((void*)0), ((void*)0), rescan, ((void*)0));
  goto out_reap;
 }





 res = scsi_probe_and_add_lun(starget, 0, &bflags, ((void*)0), rescan, ((void*)0));
 if (res == SCSI_SCAN_LUN_PRESENT || res == SCSI_SCAN_TARGET_PRESENT) {
  if (scsi_report_lun_scan(starget, bflags, rescan) != 0)




   scsi_sequential_lun_scan(starget, bflags,
       starget->scsi_level, rescan);
 }

 out_reap:
 scsi_autopm_put_target(starget);




 scsi_target_reap(starget);

 put_device(&starget->dev);
}
