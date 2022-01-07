
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct pqi_scsi_dev* hostdata; int host; } ;
struct pqi_scsi_dev {scalar_t__ raid_bypass_enabled; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t pqi_ssd_smart_path_enabled_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_device *sdev;
 struct pqi_scsi_dev *device;
 unsigned long flags;

 sdev = to_scsi_device(dev);
 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 device = sdev->hostdata;
 buffer[0] = device->raid_bypass_enabled ? '1' : '0';
 buffer[1] = '\n';
 buffer[2] = '\0';

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return 2;
}
