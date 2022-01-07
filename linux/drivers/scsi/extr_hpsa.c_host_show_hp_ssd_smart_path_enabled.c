
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int offload_enabled; scalar_t__ devtype; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ZBC ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int snprintf (char*,int,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t host_show_hp_ssd_smart_path_enabled(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;
 int offload_enabled;

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->lock, flags);
 hdev = sdev->hostdata;
 if (!hdev) {
  spin_unlock_irqrestore(&h->lock, flags);
  return -ENODEV;
 }
 offload_enabled = hdev->offload_enabled;
 spin_unlock_irqrestore(&h->lock, flags);

 if (hdev->devtype == TYPE_DISK || hdev->devtype == TYPE_ZBC)
  return snprintf(buf, 20, "%d\n", offload_enabled);
 else
  return snprintf(buf, 40, "%s\n",
    "Not applicable for a controller");
}
