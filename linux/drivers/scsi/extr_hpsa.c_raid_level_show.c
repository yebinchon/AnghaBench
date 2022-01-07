
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {unsigned char raid_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 unsigned char RAID_UNKNOWN ;
 int is_logical_device (struct hpsa_scsi_dev_t*) ;
 char** raid_label ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int snprintf (char*,int ,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t raid_level_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 ssize_t l = 0;
 unsigned char rlevel;
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->lock, flags);
 hdev = sdev->hostdata;
 if (!hdev) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENODEV;
 }


 if (!is_logical_device(hdev)) {
  spin_unlock_irqrestore(&h->lock, flags);
  l = snprintf(buf, PAGE_SIZE, "N/A\n");
  return l;
 }

 rlevel = hdev->raid_level;
 spin_unlock_irqrestore(&h->lock, flags);
 if (rlevel > RAID_UNKNOWN)
  rlevel = RAID_UNKNOWN;
 l = snprintf(buf, PAGE_SIZE, "RAID %s\n", raid_label[rlevel]);
 return l;
}
