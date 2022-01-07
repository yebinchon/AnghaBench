
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct virtual_consumer_data {int regulator; int mode; int lock; } ;
struct TYPE_5__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 char* dev_get_platdata (TYPE_1__*) ;
 struct virtual_consumer_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct virtual_consumer_data*) ;
 int regulator_get_mode (int ) ;
 int regulator_virtual_attr_group ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int regulator_virtual_probe(struct platform_device *pdev)
{
 char *reg_id = dev_get_platdata(&pdev->dev);
 struct virtual_consumer_data *drvdata;
 int ret;

 drvdata = devm_kzalloc(&pdev->dev, sizeof(struct virtual_consumer_data),
          GFP_KERNEL);
 if (drvdata == ((void*)0))
  return -ENOMEM;

 mutex_init(&drvdata->lock);

 drvdata->regulator = devm_regulator_get(&pdev->dev, reg_id);
 if (IS_ERR(drvdata->regulator)) {
  ret = PTR_ERR(drvdata->regulator);
  dev_err(&pdev->dev, "Failed to obtain supply '%s': %d\n",
   reg_id, ret);
  return ret;
 }

 ret = sysfs_create_group(&pdev->dev.kobj,
     &regulator_virtual_attr_group);
 if (ret != 0) {
  dev_err(&pdev->dev,
   "Failed to create attribute group: %d\n", ret);
  return ret;
 }

 drvdata->mode = regulator_get_mode(drvdata->regulator);

 platform_set_drvdata(pdev, drvdata);

 return 0;
}
