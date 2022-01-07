
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int at91rm9200_restart_nb ;
 TYPE_1__ at91wdt_miscdev ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int misc_register (TYPE_1__*) ;
 scalar_t__ nowayout ;
 int pr_info (char*,int ,char*) ;
 int register_restart_handler (int *) ;
 int regmap_st ;
 int syscon_node_to_regmap (int ) ;
 int wdt_time ;

__attribute__((used)) static int at91wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *parent;
 int res;

 if (at91wdt_miscdev.parent)
  return -EBUSY;
 at91wdt_miscdev.parent = &pdev->dev;

 parent = dev->parent;
 if (!parent) {
  dev_err(dev, "no parent\n");
  return -ENODEV;
 }

 regmap_st = syscon_node_to_regmap(parent->of_node);
 if (IS_ERR(regmap_st))
  return -ENODEV;

 res = misc_register(&at91wdt_miscdev);
 if (res)
  return res;

 res = register_restart_handler(&at91rm9200_restart_nb);
 if (res)
  dev_warn(dev, "failed to register restart handler\n");

 pr_info("AT91 Watchdog Timer enabled (%d seconds%s)\n",
  wdt_time, nowayout ? ", nowayout" : "");
 return 0;
}
