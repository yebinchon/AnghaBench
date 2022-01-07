
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {int bay; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct pqi_scsi_dev* pqi_find_device_by_sas_rphy (struct pqi_ctrl_info*,struct sas_rphy*) ;
 struct Scsi_Host* rphy_to_shost (struct sas_rphy*) ;
 struct pqi_ctrl_info* shost_to_hba (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pqi_sas_get_bay_identifier(struct sas_rphy *rphy)
{

 int rc;
 unsigned long flags;
 struct pqi_ctrl_info *ctrl_info;
 struct pqi_scsi_dev *device;
 struct Scsi_Host *shost;

 if (!rphy)
  return -ENODEV;

 shost = rphy_to_shost(rphy);
 ctrl_info = shost_to_hba(shost);
 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);
 device = pqi_find_device_by_sas_rphy(ctrl_info, rphy);

 if (!device) {
  rc = -ENODEV;
  goto out;
 }

 if (device->bay == 0xff)
  rc = -EINVAL;
 else
  rc = device->bay;

out:
 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return rc;
}
