
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int kobj; } ;
struct cros_ec_dev {TYPE_1__ class_dev; } ;


 int cros_ec_attr_group ;
 int dev_err (struct device*,char*,int) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int cros_ec_sysfs_probe(struct platform_device *pd)
{
 struct cros_ec_dev *ec_dev = dev_get_drvdata(pd->dev.parent);
 struct device *dev = &pd->dev;
 int ret;

 ret = sysfs_create_group(&ec_dev->class_dev.kobj, &cros_ec_attr_group);
 if (ret < 0)
  dev_err(dev, "failed to create attributes. err=%d\n", ret);

 return ret;
}
