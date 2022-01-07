
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int hba_ioaccel_enabled; scalar_t__ queue_depth; scalar_t__ ioaccel_handle; } ;
struct ext_report_lun_entry {int device_flags; int * lunid; scalar_t__ ioaccel_handle; } ;
struct ctlr_info {int dummy; } ;
struct bmic_identify_physical_device {int current_queue_depth_limit; } ;
struct ReportExtendedLUNdata {struct ext_report_lun_entry* LUN; } ;


 scalar_t__ DRIVE_CMDS_RESERVED_FOR_FW ;
 scalar_t__ DRIVE_QUEUE_DEPTH ;
 int GET_BMIC_DRIVE_NUMBER (int *) ;
 int hpsa_bmic_id_physical_device (struct ctlr_info*,int *,int ,struct bmic_identify_physical_device*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memset (struct bmic_identify_physical_device*,int ,int) ;

__attribute__((used)) static void hpsa_get_ioaccel_drive_info(struct ctlr_info *h,
  struct hpsa_scsi_dev_t *dev,
  struct ReportExtendedLUNdata *rlep, int rle_index,
  struct bmic_identify_physical_device *id_phys)
{
 int rc;
 struct ext_report_lun_entry *rle;

 rle = &rlep->LUN[rle_index];

 dev->ioaccel_handle = rle->ioaccel_handle;
 if ((rle->device_flags & 0x08) && dev->ioaccel_handle)
  dev->hba_ioaccel_enabled = 1;
 memset(id_phys, 0, sizeof(*id_phys));
 rc = hpsa_bmic_id_physical_device(h, &rle->lunid[0],
   GET_BMIC_DRIVE_NUMBER(&rle->lunid[0]), id_phys,
   sizeof(*id_phys));
 if (!rc)



  dev->queue_depth =
   le16_to_cpu(id_phys->current_queue_depth_limit) -
    2;
 else
  dev->queue_depth = 7;
}
