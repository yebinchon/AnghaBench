
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid ;
struct scsi_device {struct pqi_scsi_dev* hostdata; int host; } ;
struct pqi_scsi_dev {int unique_id; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int memcpy (unsigned char*,int ,int) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;
 int snprintf (char*,int ,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t pqi_unique_id_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct pqi_ctrl_info *ctrl_info;
 struct scsi_device *sdev;
 struct pqi_scsi_dev *device;
 unsigned long flags;
 unsigned char uid[16];

 sdev = to_scsi_device(dev);
 ctrl_info = shost_to_hba(sdev->host);

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);

 device = sdev->hostdata;
 if (!device) {
  spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock,
   flags);
  return -ENODEV;
 }
 memcpy(uid, device->unique_id, sizeof(uid));

 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);

 return snprintf(buffer, PAGE_SIZE,
  "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n",
  uid[0], uid[1], uid[2], uid[3],
  uid[4], uid[5], uid[6], uid[7],
  uid[8], uid[9], uid[10], uid[11],
  uid[12], uid[13], uid[14], uid[15]);
}
