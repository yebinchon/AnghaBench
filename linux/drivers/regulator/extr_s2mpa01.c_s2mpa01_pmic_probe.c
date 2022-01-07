
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sec_pmic_dev {int regmap_pmic; int dev; } ;
struct sec_platform_data {TYPE_1__* regulators; } ;
struct s2mpa01_info {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int init_data; struct s2mpa01_info* driver_data; int regmap; int dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int initdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int S2MPA01_REGULATOR_MAX ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct sec_pmic_dev* dev_get_drvdata (int ) ;
 struct sec_platform_data* dev_get_platdata (int ) ;
 struct s2mpa01_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,int *,struct regulator_config*) ;
 int * regulators ;

__attribute__((used)) static int s2mpa01_pmic_probe(struct platform_device *pdev)
{
 struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct sec_platform_data *pdata = dev_get_platdata(iodev->dev);
 struct regulator_config config = { };
 struct s2mpa01_info *s2mpa01;
 int i;

 s2mpa01 = devm_kzalloc(&pdev->dev, sizeof(*s2mpa01), GFP_KERNEL);
 if (!s2mpa01)
  return -ENOMEM;

 config.dev = iodev->dev;
 config.regmap = iodev->regmap_pmic;
 config.driver_data = s2mpa01;

 for (i = 0; i < S2MPA01_REGULATOR_MAX; i++) {
  struct regulator_dev *rdev;

  if (pdata)
   config.init_data = pdata->regulators[i].initdata;

  rdev = devm_regulator_register(&pdev->dev,
      &regulators[i], &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "regulator init failed for %d\n",
    i);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
