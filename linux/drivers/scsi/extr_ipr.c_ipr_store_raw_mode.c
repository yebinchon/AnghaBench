
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {scalar_t__ raw_mode; scalar_t__ sdev; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int EINVAL ;
 int ENXIO ;
 int KERN_INFO ;
 scalar_t__ ipr_is_af_dasd_device (struct ipr_resource_entry*) ;
 int sdev_printk (int ,scalar_t__,char*,char*) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strlen (char const*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t ipr_store_raw_mode(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
 struct ipr_resource_entry *res;
 unsigned long lock_flags = 0;
 ssize_t len;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = (struct ipr_resource_entry *)sdev->hostdata;
 if (res) {
  if (ipr_is_af_dasd_device(res)) {
   res->raw_mode = simple_strtoul(buf, ((void*)0), 10);
   len = strlen(buf);
   if (res->sdev)
    sdev_printk(KERN_INFO, res->sdev, "raw mode is %s\n",
     res->raw_mode ? "enabled" : "disabled");
  } else
   len = -EINVAL;
 } else
  len = -ENXIO;
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return len;
}
