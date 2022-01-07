
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioa_cfg {TYPE_1__* host; int log_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_2__ {int host_lock; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int simple_strtoul (char const*,int *,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t ipr_store_log_level(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
 unsigned long lock_flags = 0;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 ioa_cfg->log_level = simple_strtoul(buf, ((void*)0), 10);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return strlen(buf);
}
