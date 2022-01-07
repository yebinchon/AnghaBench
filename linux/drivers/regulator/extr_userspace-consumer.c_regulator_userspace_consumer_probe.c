
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct userspace_consumer_data {scalar_t__ enabled; int supplies; int num_supplies; int lock; int name; } ;
struct regulator_userspace_consumer_data {scalar_t__ init_on; int supplies; int num_supplies; int name; } ;
struct TYPE_5__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int attr_group ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct regulator_userspace_consumer_data* dev_get_platdata (TYPE_1__*) ;
 struct userspace_consumer_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_1__*,int ,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct userspace_consumer_data*) ;
 int regulator_bulk_enable (int ,int ) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int regulator_userspace_consumer_probe(struct platform_device *pdev)
{
 struct regulator_userspace_consumer_data *pdata;
 struct userspace_consumer_data *drvdata;
 int ret;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata)
  return -EINVAL;

 drvdata = devm_kzalloc(&pdev->dev,
          sizeof(struct userspace_consumer_data),
          GFP_KERNEL);
 if (drvdata == ((void*)0))
  return -ENOMEM;

 drvdata->name = pdata->name;
 drvdata->num_supplies = pdata->num_supplies;
 drvdata->supplies = pdata->supplies;

 mutex_init(&drvdata->lock);

 ret = devm_regulator_bulk_get(&pdev->dev, drvdata->num_supplies,
          drvdata->supplies);
 if (ret) {
  dev_err(&pdev->dev, "Failed to get supplies: %d\n", ret);
  return ret;
 }

 ret = sysfs_create_group(&pdev->dev.kobj, &attr_group);
 if (ret != 0)
  return ret;

 if (pdata->init_on) {
  ret = regulator_bulk_enable(drvdata->num_supplies,
         drvdata->supplies);
  if (ret) {
   dev_err(&pdev->dev,
    "Failed to set initial state: %d\n", ret);
   goto err_enable;
  }
 }

 drvdata->enabled = pdata->init_on;
 platform_set_drvdata(pdev, drvdata);

 return 0;

err_enable:
 sysfs_remove_group(&pdev->dev.kobj, &attr_group);

 return ret;
}
