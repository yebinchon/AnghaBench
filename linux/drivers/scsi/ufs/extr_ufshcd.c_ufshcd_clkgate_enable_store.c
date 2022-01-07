
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int is_enabled; int active_reqs; } ;
struct ufs_hba {TYPE_2__ clk_gating; TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int host_lock; } ;


 size_t EINVAL ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtou32 (char const*,int ,int*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_release (struct ufs_hba*) ;

__attribute__((used)) static ssize_t ufshcd_clkgate_enable_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);
 unsigned long flags;
 u32 value;

 if (kstrtou32(buf, 0, &value))
  return -EINVAL;

 value = !!value;
 if (value == hba->clk_gating.is_enabled)
  goto out;

 if (value) {
  ufshcd_release(hba);
 } else {
  spin_lock_irqsave(hba->host->host_lock, flags);
  hba->clk_gating.active_reqs++;
  spin_unlock_irqrestore(hba->host->host_lock, flags);
 }

 hba->clk_gating.is_enabled = value;
out:
 return count;
}
