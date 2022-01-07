
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delay_ms; } ;
struct ufs_hba {TYPE_1__ clk_gating; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t ufshcd_clkgate_delay_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%lu\n", hba->clk_gating.delay_ms);
}
