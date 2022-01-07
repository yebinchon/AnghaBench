
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;

__attribute__((used)) static void devm_backlight_device_release(struct device *dev, void *res)
{
 struct backlight_device *backlight = *(struct backlight_device **)res;

 backlight_device_unregister(backlight);
}
