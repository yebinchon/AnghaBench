
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_firmware_feature {int feature_name; scalar_t__ enabled; int supported; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;

__attribute__((used)) static void pqi_firmware_feature_status(struct pqi_ctrl_info *ctrl_info,
 struct pqi_firmware_feature *firmware_feature)
{
 if (!firmware_feature->supported) {
  dev_info(&ctrl_info->pci_dev->dev, "%s not supported by controller\n",
   firmware_feature->feature_name);
  return;
 }

 if (firmware_feature->enabled) {
  dev_info(&ctrl_info->pci_dev->dev,
   "%s enabled\n", firmware_feature->feature_name);
  return;
 }

 dev_err(&ctrl_info->pci_dev->dev, "failed to enable %s\n",
  firmware_feature->feature_name);
}
