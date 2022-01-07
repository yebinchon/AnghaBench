
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rk808_regulator_data {int dummy; } ;
struct rk808 {int variant; int regmap; struct i2c_client* i2c; } ;
struct regulator_dev {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {int regmap; struct rk808_regulator_data* driver_data; int * dev; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;

 int RK805_NUM_REGULATORS ;

 int RK808_NUM_REGULATORS ;

 int RK809_NUM_REGULATORS ;

 int RK817_NUM_REGULATORS ;

 int RK818_NUM_REGULATORS ;
 int dev_err (int *,char*,int) ;
 struct rk808* dev_get_drvdata (int ) ;
 struct rk808_regulator_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,struct regulator_desc const*,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct rk808_regulator_data*) ;
 struct regulator_desc* rk805_reg ;
 struct regulator_desc* rk808_reg ;
 int rk808_regulator_dt_parse_pdata (TYPE_1__*,int *,int ,struct rk808_regulator_data*) ;
 struct regulator_desc* rk809_reg ;
 struct regulator_desc* rk817_reg ;
 struct regulator_desc* rk818_reg ;

__attribute__((used)) static int rk808_regulator_probe(struct platform_device *pdev)
{
 struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
 struct i2c_client *client = rk808->i2c;
 struct regulator_config config = {};
 struct regulator_dev *rk808_rdev;
 struct rk808_regulator_data *pdata;
 const struct regulator_desc *regulators;
 int ret, i, nregulators;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 ret = rk808_regulator_dt_parse_pdata(&pdev->dev, &client->dev,
          rk808->regmap, pdata);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, pdata);

 switch (rk808->variant) {
 case 132:
  regulators = rk805_reg;
  nregulators = RK805_NUM_REGULATORS;
  break;
 case 131:
  regulators = rk808_reg;
  nregulators = RK808_NUM_REGULATORS;
  break;
 case 130:
  regulators = rk809_reg;
  nregulators = RK809_NUM_REGULATORS;
  break;
 case 129:
  regulators = rk817_reg;
  nregulators = RK817_NUM_REGULATORS;
  break;
 case 128:
  regulators = rk818_reg;
  nregulators = RK818_NUM_REGULATORS;
  break;
 default:
  dev_err(&client->dev, "unsupported RK8XX ID %lu\n",
   rk808->variant);
  return -EINVAL;
 }

 config.dev = &client->dev;
 config.driver_data = pdata;
 config.regmap = rk808->regmap;


 for (i = 0; i < nregulators; i++) {
  rk808_rdev = devm_regulator_register(&pdev->dev,
           &regulators[i], &config);
  if (IS_ERR(rk808_rdev)) {
   dev_err(&client->dev,
    "failed to register %d regulator\n", i);
   return PTR_ERR(rk808_rdev);
  }
 }

 return 0;
}
