
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {TYPE_2__* host; TYPE_1__* hrrq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {scalar_t__ ioa_is_dead; } ;


 size_t IPR_INIT_HRRQ ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static ssize_t ipr_show_adapter_state(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
 unsigned long lock_flags = 0;
 int len;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead)
  len = snprintf(buf, PAGE_SIZE, "offline\n");
 else
  len = snprintf(buf, PAGE_SIZE, "online\n");
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return len;
}
