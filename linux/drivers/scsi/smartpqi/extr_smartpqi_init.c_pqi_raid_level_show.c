
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct pqi_scsi_dev* hostdata; int host; } ;
struct pqi_scsi_dev {int raid_level; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 char* pqi_raid_level_to_string (int ) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int snprintf (char*,int ,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t pqi_raid_level_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_device *sdev;
 struct pqi_scsi_dev *device;
 unsigned long flags;
 char *raid_level;

 sdev = to_scsi_device(dev);
 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 device = sdev->hostdata;

 if (pqi_is_logical_device(device))
  raid_level = pqi_raid_level_to_string(device->raid_level);
 else
  raid_level = "N/A";

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return snprintf(buffer, PAGE_SIZE, "%s\n", raid_level);
}
