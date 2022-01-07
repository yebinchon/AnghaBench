
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_config {struct lp3971* driver_data; int init_data; int dev; } ;
struct lp3971_regulator_subdev {size_t id; int initdata; } ;
struct lp3971_platform_data {int num_regulators; struct lp3971_regulator_subdev* regulators; } ;
struct lp3971 {int dev; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (int ,char*,int) ;
 struct regulator_dev* devm_regulator_register (int ,int *,struct regulator_config*) ;
 int * regulators ;

__attribute__((used)) static int setup_regulators(struct lp3971 *lp3971,
          struct lp3971_platform_data *pdata)
{
 int i, err;


 for (i = 0; i < pdata->num_regulators; i++) {
  struct regulator_config config = { };
  struct lp3971_regulator_subdev *reg = &pdata->regulators[i];
  struct regulator_dev *rdev;

  config.dev = lp3971->dev;
  config.init_data = reg->initdata;
  config.driver_data = lp3971;

  rdev = devm_regulator_register(lp3971->dev,
            &regulators[reg->id], &config);
  if (IS_ERR(rdev)) {
   err = PTR_ERR(rdev);
   dev_err(lp3971->dev, "regulator init failed: %d\n",
    err);
   return err;
  }
 }

 return 0;
}
