
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int kobj; } ;
struct cros_ec_dev {TYPE_2__ class_dev; } ;


 int cros_ec_attr_group ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int cros_ec_sysfs_remove(struct platform_device *pd)
{
 struct cros_ec_dev *ec_dev = dev_get_drvdata(pd->dev.parent);

 sysfs_remove_group(&ec_dev->class_dev.kobj, &cros_ec_attr_group);

 return 0;
}
