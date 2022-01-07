
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int data; } ;
struct TYPE_2__ {int of_match_table; } ;


 int EINVAL ;
 int ENODEV ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int syscfg_reset_controller_register (struct device*,int ) ;

int syscfg_reset_probe(struct platform_device *pdev)
{
 struct device *dev = pdev ? &pdev->dev : ((void*)0);
 const struct of_device_id *match;

 if (!dev || !dev->driver)
  return -ENODEV;

 match = of_match_device(dev->driver->of_match_table, dev);
 if (!match || !match->data)
  return -EINVAL;

 return syscfg_reset_controller_register(dev, match->data);
}
