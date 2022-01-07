
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;
struct scsi_device {int allow_restart; struct pqi_scsi_dev* hostdata; int lun; int host; } ;
struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {int target_lun_valid; scalar_t__ advertised_queue_depth; scalar_t__ queue_depth; struct scsi_device* sdev; int lun; int target; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;


 scalar_t__ PQI_PHYSICAL_DEVICE_BUS ;
 int pqi_disable_write_same (struct scsi_device*) ;
 struct pqi_scsi_dev* pqi_find_device_by_sas_rphy (struct pqi_ctrl_info*,struct sas_rphy*) ;
 struct pqi_scsi_dev* pqi_find_scsi_dev (struct pqi_ctrl_info*,scalar_t__,int ,int ) ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 int scsi_change_queue_depth (struct scsi_device*,scalar_t__) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 scalar_t__ sdev_channel (struct scsi_device*) ;
 int sdev_id (struct scsi_device*) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sas_rphy* target_to_rphy (struct scsi_target*) ;

__attribute__((used)) static int pqi_slave_alloc(struct scsi_device *sdev)
{
 struct pqi_scsi_dev *device;
 unsigned long flags;
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_target *starget;
 struct sas_rphy *rphy;

 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 if (sdev_channel(sdev) == PQI_PHYSICAL_DEVICE_BUS) {
  starget = scsi_target(sdev);
  rphy = target_to_rphy(starget);
  device = pqi_find_device_by_sas_rphy(ctrl_info, rphy);
  if (device) {
   device->target = sdev_id(sdev);
   device->lun = sdev->lun;
   device->target_lun_valid = 1;
  }
 } else {
  device = pqi_find_scsi_dev(ctrl_info, sdev_channel(sdev),
   sdev_id(sdev), sdev->lun);
 }

 if (device) {
  sdev->hostdata = device;
  device->sdev = sdev;
  if (device->queue_depth) {
   device->advertised_queue_depth = device->queue_depth;
   scsi_change_queue_depth(sdev,
    device->advertised_queue_depth);
  }
  if (pqi_is_logical_device(device))
   pqi_disable_write_same(sdev);
  else
   sdev->allow_restart = 1;
 }

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return 0;
}
