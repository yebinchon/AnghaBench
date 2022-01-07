
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ hostdata; TYPE_2__* host; } ;
struct ipr_resource_entry {int res_handle; } ;
struct ipr_ioa_cfg {TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {int host_lock; } ;


 int ENXIO ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t ipr_show_adapter_handle(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
 struct ipr_resource_entry *res;
 unsigned long lock_flags = 0;
 ssize_t len = -ENXIO;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = (struct ipr_resource_entry *)sdev->hostdata;
 if (res)
  len = snprintf(buf, PAGE_SIZE, "%08X\n", res->res_handle);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return len;
}
