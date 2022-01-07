
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {unsigned long rpm_lvl; unsigned long spm_lvl; TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int host_lock; } ;


 size_t EINVAL ;
 unsigned long UFS_PM_LVL_MAX ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static inline ssize_t ufs_sysfs_pm_lvl_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count,
          bool rpm)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);
 unsigned long flags, value;

 if (kstrtoul(buf, 0, &value))
  return -EINVAL;

 if (value >= UFS_PM_LVL_MAX)
  return -EINVAL;

 spin_lock_irqsave(hba->host->host_lock, flags);
 if (rpm)
  hba->rpm_lvl = value;
 else
  hba->spm_lvl = value;
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 return count;
}
