
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ reset_levels; scalar_t__ reset_sources; } ;


 int dev_attr_reset_level ;
 int dev_attr_reset_reason ;
 int dev_warn (struct device*,char*,int) ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static void tegra_pmc_reset_sysfs_init(struct tegra_pmc *pmc)
{
 struct device *dev = pmc->dev;
 int err = 0;

 if (pmc->soc->reset_sources) {
  err = device_create_file(dev, &dev_attr_reset_reason);
  if (err < 0)
   dev_warn(dev,
     "failed to create attr \"reset_reason\": %d\n",
     err);
 }

 if (pmc->soc->reset_levels) {
  err = device_create_file(dev, &dev_attr_reset_level);
  if (err < 0)
   dev_warn(dev,
     "failed to create attr \"reset_level\": %d\n",
     err);
 }
}
