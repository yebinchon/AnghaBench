
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* of_node; int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {int phandle; } ;


 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_get_drvdata (int ) ;
 struct backlight_device* devm_backlight_device_register (struct device*,int ,struct device*,int ,int *,int *) ;
 int rave_sp_backlight_ops ;
 int rave_sp_backlight_props ;

__attribute__((used)) static int rave_sp_backlight_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct backlight_device *bd;

 bd = devm_backlight_device_register(dev, pdev->name, dev,
         dev_get_drvdata(dev->parent),
         &rave_sp_backlight_ops,
         &rave_sp_backlight_props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);






 if (!dev->of_node->phandle)
  backlight_update_status(bd);

 return 0;
}
