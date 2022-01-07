
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {TYPE_1__* init_data; struct ab8500_ext_regulator_info* driver_data; TYPE_2__* dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct ab8500_regulator_platform_data {int num_ext_regulator; TYPE_1__* ext_regulator; } ;
struct TYPE_8__ {int name; } ;
struct ab8500_ext_regulator_info {int update_val; int update_val_hp; int update_val_lp; TYPE_3__ desc; struct ab8500_ext_regulator_cfg* cfg; TYPE_2__* dev; } ;
struct ab8500_ext_regulator_cfg {int dummy; } ;
struct ab8500 {int dummy; } ;
struct TYPE_6__ {scalar_t__ driver_data; } ;


 size_t AB8500_EXT_SUPPLY3 ;
 int ARRAY_SIZE (struct ab8500_ext_regulator_info*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 struct ab8500_ext_regulator_info* ab8500_ext_regulator_info ;
 struct ab8500_regulator_platform_data ab8500_regulator_plat_data ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct ab8500* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 scalar_t__ is_ab8500_2p0_or_earlier (struct ab8500*) ;

__attribute__((used)) static int ab8500_ext_regulator_probe(struct platform_device *pdev)
{
 struct ab8500 *ab8500 = dev_get_drvdata(pdev->dev.parent);
 struct ab8500_regulator_platform_data *pdata = &ab8500_regulator_plat_data;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 int i;

 if (!ab8500) {
  dev_err(&pdev->dev, "null mfd parent\n");
  return -EINVAL;
 }


 if (pdata->num_ext_regulator != ARRAY_SIZE(ab8500_ext_regulator_info)) {
  dev_err(&pdev->dev, "Configuration error: size mismatch.\n");
  return -EINVAL;
 }


 if (is_ab8500_2p0_or_earlier(ab8500)) {
  struct ab8500_ext_regulator_info *info;


  info = &ab8500_ext_regulator_info[AB8500_EXT_SUPPLY3];
  info->update_val = 0x30;
  info->update_val_hp = 0x30;
  info->update_val_lp = 0x10;
 }


 for (i = 0; i < ARRAY_SIZE(ab8500_ext_regulator_info); i++) {
  struct ab8500_ext_regulator_info *info = ((void*)0);


  info = &ab8500_ext_regulator_info[i];
  info->dev = &pdev->dev;
  info->cfg = (struct ab8500_ext_regulator_cfg *)
   pdata->ext_regulator[i].driver_data;

  config.dev = &pdev->dev;
  config.driver_data = info;
  config.init_data = &pdata->ext_regulator[i];


  rdev = devm_regulator_register(&pdev->dev, &info->desc,
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
     info->desc.name);
   return PTR_ERR(rdev);
  }

  dev_dbg(&pdev->dev, "%s-probed\n", info->desc.name);
 }

 return 0;
}
