
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct version_format {int build; } ;
struct ucsi_ccg {scalar_t__ fw_build; struct device* dev; } ;
struct TYPE_2__ {int build; } ;
struct fw_config_table {TYPE_1__ app; } ;
struct device {int dummy; } ;


 int dev_info (struct device*,char*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static bool ccg_check_vendor_version(struct ucsi_ccg *uc,
         struct version_format *app,
         struct fw_config_table *fw_cfg)
{
 struct device *dev = uc->dev;


 if (le16_to_cpu(app->build) != uc->fw_build) {
  dev_info(dev, "current fw is not from supported vendor\n");
  return 0;
 }


 if (le16_to_cpu(fw_cfg->app.build) != uc->fw_build) {
  dev_info(dev, "new fw is not from supported vendor\n");
  return 0;
 }
 return 1;
}
