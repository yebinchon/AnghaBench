
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int lun_wwn; int dev_id; } ;
struct ipr_ioa_cfg {TYPE_2__* host; scalar_t__ sis64; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int ENXIO ;
 int PAGE_SIZE ;
 int be64_to_cpu (int ) ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t ipr_show_device_id(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
 struct ipr_resource_entry *res;
 unsigned long lock_flags = 0;
 ssize_t len = -ENXIO;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = (struct ipr_resource_entry *)sdev->hostdata;
 if (res && ioa_cfg->sis64)
  len = snprintf(buf, PAGE_SIZE, "0x%llx\n", be64_to_cpu(res->dev_id));
 else if (res)
  len = snprintf(buf, PAGE_SIZE, "0x%llx\n", res->lun_wwn);

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return len;
}
