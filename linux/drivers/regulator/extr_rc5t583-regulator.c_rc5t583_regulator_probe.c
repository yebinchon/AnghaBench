
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct rc5t583_regulator_info* driver_data; int init_data; TYPE_1__* dev; } ;
struct TYPE_6__ {int name; } ;
struct rc5t583_regulator_info {scalar_t__ deepsleep_id; TYPE_2__ desc; } ;
struct rc5t583_platform_data {int * reg_init_data; int * regulator_deepsleep_slot; int * regulator_ext_pwr_control; } ;
struct rc5t583 {int regmap; int dev; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 scalar_t__ RC5T583_DS_NONE ;
 int RC5T583_REGULATOR_MAX ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 struct rc5t583_platform_data* dev_get_platdata (int ) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 int rc5t583_ext_power_req_config (int ,scalar_t__,int ,int ) ;
 struct rc5t583_regulator_info* rc5t583_reg_info ;

__attribute__((used)) static int rc5t583_regulator_probe(struct platform_device *pdev)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(pdev->dev.parent);
 struct rc5t583_platform_data *pdata = dev_get_platdata(rc5t583->dev);
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 struct rc5t583_regulator_info *ri;
 int ret;
 int id;

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data, exiting...\n");
  return -ENODEV;
 }

 for (id = 0; id < RC5T583_REGULATOR_MAX; ++id) {
  ri = &rc5t583_reg_info[id];

  if (ri->deepsleep_id == RC5T583_DS_NONE)
   goto skip_ext_pwr_config;

  ret = rc5t583_ext_power_req_config(rc5t583->dev,
    ri->deepsleep_id,
    pdata->regulator_ext_pwr_control[id],
    pdata->regulator_deepsleep_slot[id]);




  if (ret < 0)
   dev_warn(&pdev->dev,
    "Failed to configure ext control %d\n", id);

skip_ext_pwr_config:
  config.dev = &pdev->dev;
  config.init_data = pdata->reg_init_data[id];
  config.driver_data = ri;
  config.regmap = rc5t583->regmap;

  rdev = devm_regulator_register(&pdev->dev, &ri->desc, &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "Failed to register regulator %s\n",
      ri->desc.name);
   return PTR_ERR(rdev);
  }
 }
 return 0;
}
