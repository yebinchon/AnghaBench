
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {unsigned long iopoll_weight; int nvectors; int hrrq_num; TYPE_2__* hrrq; scalar_t__ sis64; TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_4__ {int iopoll; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int dev_info (int *,char*) ;
 int ipr_iopoll ;
 int irq_poll_disable (int *) ;
 int irq_poll_init (int *,unsigned long,int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t ipr_store_iopoll_weight(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
 unsigned long user_iopoll_weight;
 unsigned long lock_flags = 0;
 int i;

 if (!ioa_cfg->sis64) {
  dev_info(&ioa_cfg->pdev->dev, "irq_poll not supported on this adapter\n");
  return -EINVAL;
 }
 if (kstrtoul(buf, 10, &user_iopoll_weight))
  return -EINVAL;

 if (user_iopoll_weight > 256) {
  dev_info(&ioa_cfg->pdev->dev, "Invalid irq_poll weight. It must be less than 256\n");
  return -EINVAL;
 }

 if (user_iopoll_weight == ioa_cfg->iopoll_weight) {
  dev_info(&ioa_cfg->pdev->dev, "Current irq_poll weight has the same weight\n");
  return strlen(buf);
 }

 if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
  for (i = 1; i < ioa_cfg->hrrq_num; i++)
   irq_poll_disable(&ioa_cfg->hrrq[i].iopoll);
 }

 spin_lock_irqsave(shost->host_lock, lock_flags);
 ioa_cfg->iopoll_weight = user_iopoll_weight;
 if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
  for (i = 1; i < ioa_cfg->hrrq_num; i++) {
   irq_poll_init(&ioa_cfg->hrrq[i].iopoll,
     ioa_cfg->iopoll_weight, ipr_iopoll);
  }
 }
 spin_unlock_irqrestore(shost->host_lock, lock_flags);

 return strlen(buf);
}
