
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int sas_address; int expose_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 scalar_t__ is_logical_device (struct hpsa_scsi_dev_t*) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t sas_address_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;
 u64 sas_address;

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->lock, flags);
 hdev = sdev->hostdata;
 if (!hdev || is_logical_device(hdev) || !hdev->expose_device) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENODEV;
 }
 sas_address = hdev->sas_address;
 spin_unlock_irqrestore(&h->lock, flags);

 return snprintf(buf, PAGE_SIZE, "0x%016llx\n", sas_address);
}
