
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long delay_ms; } ;
struct ufs_hba {TYPE_2__* host; TYPE_1__ clk_gating; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int host_lock; } ;


 size_t EINVAL ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static ssize_t ufshcd_clkgate_delay_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);
 unsigned long flags, value;

 if (kstrtoul(buf, 0, &value))
  return -EINVAL;

 spin_lock_irqsave(hba->host->host_lock, flags);
 hba->clk_gating.delay_ms = value;
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 return count;
}
