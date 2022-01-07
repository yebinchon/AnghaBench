
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_backlight_device_match ;
 int devm_backlight_device_release ;
 int devres_release (struct device*,int ,int ,struct backlight_device*) ;

void devm_backlight_device_unregister(struct device *dev,
    struct backlight_device *bd)
{
 int rc;

 rc = devres_release(dev, devm_backlight_device_release,
    devm_backlight_device_match, bd);
 WARN_ON(rc);
}
