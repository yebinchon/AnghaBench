
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct cros_ec_platform {int ec_name; } ;
struct TYPE_4__ {int kobj; } ;
struct cros_ec_dev {TYPE_1__ class_dev; int dev; } ;
struct TYPE_5__ {int name; } ;


 int CROS_EC_DEV_NAME ;
 int ENODEV ;
 TYPE_2__ cros_ec_lightbar_attr_group ;
 int dev_err (struct device*,char*,int ,int) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 struct cros_ec_platform* dev_get_platdata (int ) ;
 int get_lightbar_version (struct cros_ec_dev*,int *,int *) ;
 int lb_manual_suspend_ctrl (struct cros_ec_dev*,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int sysfs_create_group (int *,TYPE_2__*) ;

__attribute__((used)) static int cros_ec_lightbar_probe(struct platform_device *pd)
{
 struct cros_ec_dev *ec_dev = dev_get_drvdata(pd->dev.parent);
 struct cros_ec_platform *pdata = dev_get_platdata(ec_dev->dev);
 struct device *dev = &pd->dev;
 int ret;





 if (strcmp(pdata->ec_name, CROS_EC_DEV_NAME) != 0)
  return -ENODEV;





 if (!get_lightbar_version(ec_dev, ((void*)0), ((void*)0)))
  return -ENODEV;


 lb_manual_suspend_ctrl(ec_dev, 1);

 ret = sysfs_create_group(&ec_dev->class_dev.kobj,
     &cros_ec_lightbar_attr_group);
 if (ret < 0)
  dev_err(dev, "failed to create %s attributes. err=%d\n",
   cros_ec_lightbar_attr_group.name, ret);

 return ret;
}
