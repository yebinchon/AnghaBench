
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_config {int * init_data; int * dev; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dummy_desc ;
 int dummy_initdata ;
 int dummy_regulator_rdev ;
 int pr_err (char*,int) ;
 int regulator_register (int *,struct regulator_config*) ;

__attribute__((used)) static int dummy_regulator_probe(struct platform_device *pdev)
{
 struct regulator_config config = { };
 int ret;

 config.dev = &pdev->dev;
 config.init_data = &dummy_initdata;

 dummy_regulator_rdev = regulator_register(&dummy_desc, &config);
 if (IS_ERR(dummy_regulator_rdev)) {
  ret = PTR_ERR(dummy_regulator_rdev);
  pr_err("Failed to register regulator: %d\n", ret);
  return ret;
 }

 return 0;
}
