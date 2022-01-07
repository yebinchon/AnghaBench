
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_allowed; } ;
struct ufs_hba {TYPE_1__ clk_scaling; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t ufshcd_clkscale_enable_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", hba->clk_scaling.is_allowed);
}
