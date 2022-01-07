
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; int lun; } ;
struct sas_rphy {int dummy; } ;
struct hpsa_scsi_dev_t {int ioaccel_cmds_out; scalar_t__ expose_device; int lun; int target; } ;
struct ctlr_info {int devlock; } ;


 scalar_t__ HPSA_PHYSICAL_DEVICE_BUS ;
 int atomic_set (int *,int ) ;
 struct hpsa_scsi_dev_t* hpsa_find_device_by_sas_rphy (struct ctlr_info*,struct sas_rphy*) ;
 struct hpsa_scsi_dev_t* lookup_hpsa_scsi_dev (struct ctlr_info*,scalar_t__,int ,int ) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 scalar_t__ sdev_channel (struct scsi_device*) ;
 int sdev_id (struct scsi_device*) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sas_rphy* target_to_rphy (struct scsi_target*) ;

__attribute__((used)) static int hpsa_slave_alloc(struct scsi_device *sdev)
{
 struct hpsa_scsi_dev_t *sd = ((void*)0);
 unsigned long flags;
 struct ctlr_info *h;

 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->devlock, flags);
 if (sdev_channel(sdev) == HPSA_PHYSICAL_DEVICE_BUS) {
  struct scsi_target *starget;
  struct sas_rphy *rphy;

  starget = scsi_target(sdev);
  rphy = target_to_rphy(starget);
  sd = hpsa_find_device_by_sas_rphy(h, rphy);
  if (sd) {
   sd->target = sdev_id(sdev);
   sd->lun = sdev->lun;
  }
 }
 if (!sd)
  sd = lookup_hpsa_scsi_dev(h, sdev_channel(sdev),
     sdev_id(sdev), sdev->lun);

 if (sd && sd->expose_device) {
  atomic_set(&sd->ioaccel_cmds_out, 0);
  sdev->hostdata = sd;
 } else
  sdev->hostdata = ((void*)0);
 spin_unlock_irqrestore(&h->devlock, flags);
 return 0;
}
