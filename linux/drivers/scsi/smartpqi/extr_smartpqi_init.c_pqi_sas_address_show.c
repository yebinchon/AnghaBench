
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_device {struct pqi_scsi_dev* hostdata; int host; } ;
struct pqi_scsi_dev {int sas_address; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t pqi_sas_address_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_device *sdev;
 struct pqi_scsi_dev *device;
 unsigned long flags;
 u64 sas_address;

 sdev = to_scsi_device(dev);
 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 device = sdev->hostdata;
 if (pqi_is_logical_device(device)) {
  spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock,
   flags);
  return -ENODEV;
 }
 sas_address = device->sas_address;

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return snprintf(buffer, PAGE_SIZE, "0x%016llx\n", sas_address);
}
