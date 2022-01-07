
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_device {struct pqi_scsi_dev* hostdata; int host; } ;
struct pqi_scsi_dev {int scsi3addr; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int lunid ;


 int ENODEV ;
 int PAGE_SIZE ;
 int memcpy (int *,int ,int) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int snprintf (char*,int ,char*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t pqi_lunid_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_device *sdev;
 struct pqi_scsi_dev *device;
 unsigned long flags;
 u8 lunid[8];

 sdev = to_scsi_device(dev);
 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 device = sdev->hostdata;
 if (!device) {
  spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock,
   flags);
  return -ENODEV;
 }
 memcpy(lunid, device->scsi3addr, sizeof(lunid));

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return snprintf(buffer, PAGE_SIZE, "0x%8phN\n", lunid);
}
