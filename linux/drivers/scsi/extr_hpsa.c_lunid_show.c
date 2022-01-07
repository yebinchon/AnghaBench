
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int scsi3addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; } ;
typedef int ssize_t ;
typedef int lunid ;


 int ENODEV ;
 int memcpy (unsigned char*,int ,int) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int snprintf (char*,int,char*,unsigned char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t lunid_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;
 unsigned char lunid[8];

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->lock, flags);
 hdev = sdev->hostdata;
 if (!hdev) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENODEV;
 }
 memcpy(lunid, hdev->scsi3addr, sizeof(lunid));
 spin_unlock_irqrestore(&h->lock, flags);
 return snprintf(buf, 20, "0x%8phN\n", lunid);
}
