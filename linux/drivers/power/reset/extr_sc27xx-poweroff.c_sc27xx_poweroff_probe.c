
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ dev_get_regmap (int ,int *) ;
 int pm_power_off ;
 int poweroff_syscore_ops ;
 int register_syscore_ops (int *) ;
 scalar_t__ regmap ;
 int sc27xx_poweroff_do_poweroff ;

__attribute__((used)) static int sc27xx_poweroff_probe(struct platform_device *pdev)
{
 if (regmap)
  return -EINVAL;

 regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!regmap)
  return -ENODEV;

 pm_power_off = sc27xx_poweroff_do_poweroff;
 register_syscore_ops(&poweroff_syscore_ops);
 return 0;
}
