
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtual_consumer_data {int regulator; scalar_t__ enabled; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct virtual_consumer_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int regulator_virtual_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int regulator_virtual_remove(struct platform_device *pdev)
{
 struct virtual_consumer_data *drvdata = platform_get_drvdata(pdev);

 sysfs_remove_group(&pdev->dev.kobj, &regulator_virtual_attr_group);

 if (drvdata->enabled)
  regulator_disable(drvdata->regulator);

 return 0;
}
