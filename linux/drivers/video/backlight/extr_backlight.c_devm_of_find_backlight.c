
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_device {int dummy; } ;


 struct backlight_device* ERR_PTR (int) ;
 scalar_t__ IS_ERR_OR_NULL (struct backlight_device*) ;
 int backlight_put (struct backlight_device*) ;
 int devm_add_action (struct device*,int ,struct backlight_device*) ;
 int devm_backlight_release ;
 struct backlight_device* of_find_backlight (struct device*) ;

struct backlight_device *devm_of_find_backlight(struct device *dev)
{
 struct backlight_device *bd;
 int ret;

 bd = of_find_backlight(dev);
 if (IS_ERR_OR_NULL(bd))
  return bd;
 ret = devm_add_action(dev, devm_backlight_release, bd);
 if (ret) {
  backlight_put(bd);
  return ERR_PTR(ret);
 }
 return bd;
}
