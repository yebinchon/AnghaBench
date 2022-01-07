
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc_thermal_device {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int attr; } ;


 int ENODEV ;
 scalar_t__ PROC_THERMAL_PCI ;
 scalar_t__ PROC_THERMAL_PLATFORM_DEV ;
 TYPE_4__ dev_attr_tcc_offset_degree_celsius ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct proc_thermal_device*) ;
 int power_limit_attribute_group ;
 int proc_thermal_add (TYPE_1__*,struct proc_thermal_device**) ;
 scalar_t__ proc_thermal_emum_mode ;
 int sysfs_create_file (int *,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static int int3401_add(struct platform_device *pdev)
{
 struct proc_thermal_device *proc_priv;
 int ret;

 if (proc_thermal_emum_mode == PROC_THERMAL_PCI) {
  dev_err(&pdev->dev, "error: enumerated as PCI dev\n");
  return -ENODEV;
 }

 ret = proc_thermal_add(&pdev->dev, &proc_priv);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, proc_priv);
 proc_thermal_emum_mode = PROC_THERMAL_PLATFORM_DEV;

 dev_info(&pdev->dev, "Creating sysfs group for PROC_THERMAL_PLATFORM_DEV\n");

 ret = sysfs_create_file(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);
 if (ret)
  return ret;

 ret = sysfs_create_group(&pdev->dev.kobj, &power_limit_attribute_group);
 if (ret)
  sysfs_remove_file(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);

 return ret;
}
