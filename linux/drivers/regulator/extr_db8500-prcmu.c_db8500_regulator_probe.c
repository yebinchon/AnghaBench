
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_init_data* init_data; int * dev; struct dbx500_regulator_info* driver_data; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int name; } ;
struct dbx500_regulator_info {TYPE_1__ desc; } ;


 int ARRAY_SIZE (struct dbx500_regulator_info*) ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 struct dbx500_regulator_info* dbx500_regulator_info ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ,int) ;
 struct regulator_init_data* dev_get_platdata (int *) ;
 struct regulator_dev* devm_regulator_register (int *,TYPE_1__*,struct regulator_config*) ;
 int ux500_regulator_debug_init (struct platform_device*,struct dbx500_regulator_info*,int) ;

__attribute__((used)) static int db8500_regulator_probe(struct platform_device *pdev)
{
 struct regulator_init_data *db8500_init_data;
 struct dbx500_regulator_info *info;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 int err, i;

 db8500_init_data = dev_get_platdata(&pdev->dev);

 for (i = 0; i < ARRAY_SIZE(dbx500_regulator_info); i++) {

  info = &dbx500_regulator_info[i];

  config.driver_data = info;
  config.dev = &pdev->dev;
  if (db8500_init_data)
   config.init_data = &db8500_init_data[i];

  rdev = devm_regulator_register(&pdev->dev, &info->desc,
            &config);
  if (IS_ERR(rdev)) {
   err = PTR_ERR(rdev);
   dev_err(&pdev->dev, "failed to register %s: err %i\n",
    info->desc.name, err);
   return err;
  }
  dev_dbg(&pdev->dev, "regulator-%s-probed\n", info->desc.name);
 }

 ux500_regulator_debug_init(pdev, dbx500_regulator_info,
       ARRAY_SIZE(dbx500_regulator_info));
 return 0;
}
