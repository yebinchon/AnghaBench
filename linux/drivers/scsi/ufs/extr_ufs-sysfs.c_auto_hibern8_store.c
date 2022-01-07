
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EOPNOTSUPP ;
 unsigned int UFSHCI_AHIBERN8_MAX ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int ufshcd_auto_hibern8_update (struct ufs_hba*,int ) ;
 int ufshcd_is_auto_hibern8_supported (struct ufs_hba*) ;
 int ufshcd_us_to_ahit (unsigned int) ;

__attribute__((used)) static ssize_t auto_hibern8_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);
 unsigned int timer;

 if (!ufshcd_is_auto_hibern8_supported(hba))
  return -EOPNOTSUPP;

 if (kstrtouint(buf, 0, &timer))
  return -EINVAL;

 if (timer > UFSHCI_AHIBERN8_MAX)
  return -EINVAL;

 ufshcd_auto_hibern8_update(hba, ufshcd_us_to_ahit(timer));

 return count;
}
