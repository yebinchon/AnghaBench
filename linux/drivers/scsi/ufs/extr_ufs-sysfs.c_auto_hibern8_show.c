
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int ahit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int PAGE_SIZE ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 int ufshcd_ahit_to_us (int ) ;
 int ufshcd_is_auto_hibern8_supported (struct ufs_hba*) ;

__attribute__((used)) static ssize_t auto_hibern8_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);

 if (!ufshcd_is_auto_hibern8_supported(hba))
  return -EOPNOTSUPP;

 return snprintf(buf, PAGE_SIZE, "%d\n", ufshcd_ahit_to_us(hba->ahit));
}
