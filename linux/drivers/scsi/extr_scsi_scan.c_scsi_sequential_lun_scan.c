
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u64 ;
struct TYPE_2__ {int parent; } ;
struct scsi_target {TYPE_1__ dev; } ;
struct Scsi_Host {int max_lun; } ;
typedef enum scsi_scan_mode { ____Placeholder_scsi_scan_mode } scsi_scan_mode ;
typedef int blist_flags_t ;


 int BLIST_FORCELUN ;
 int BLIST_LARGELUN ;
 int BLIST_MAX5LUN ;
 int BLIST_SPARSELUN ;
 int KERN_INFO ;
 int SCSI_3 ;
 int SCSI_LOG_SCAN_BUS (int,int ) ;
 scalar_t__ SCSI_SCAN_LUN_PRESENT ;
 struct Scsi_Host* dev_to_shost (int ) ;
 unsigned int max_scsi_luns ;
 int min (unsigned int,int) ;
 scalar_t__ scsi_probe_and_add_lun (struct scsi_target*,int,int *,int *,int,int *) ;
 int starget_printk (int ,struct scsi_target*,char*) ;

__attribute__((used)) static void scsi_sequential_lun_scan(struct scsi_target *starget,
         blist_flags_t bflags, int scsi_level,
         enum scsi_scan_mode rescan)
{
 uint max_dev_lun;
 u64 sparse_lun, lun;
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);

 SCSI_LOG_SCAN_BUS(3, starget_printk(KERN_INFO, starget,
  "scsi scan: Sequential scan\n"));

 max_dev_lun = min(max_scsi_luns, shost->max_lun);





 if (bflags & BLIST_SPARSELUN) {
  max_dev_lun = shost->max_lun;
  sparse_lun = 1;
 } else
  sparse_lun = 0;
 if (bflags & BLIST_FORCELUN)
  max_dev_lun = shost->max_lun;



 if (bflags & BLIST_MAX5LUN)
  max_dev_lun = min(5U, max_dev_lun);




 if (scsi_level < SCSI_3 && !(bflags & BLIST_LARGELUN))
  max_dev_lun = min(8U, max_dev_lun);
 else
  max_dev_lun = min(256U, max_dev_lun);






 for (lun = 1; lun < max_dev_lun; ++lun)
  if ((scsi_probe_and_add_lun(starget, lun, ((void*)0), ((void*)0), rescan,
         ((void*)0)) != SCSI_SCAN_LUN_PRESENT) &&
      !sparse_lun)
   return;
}
