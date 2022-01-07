
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_lcd_device_match ;
 int devm_lcd_device_release ;
 int devres_release (struct device*,int ,int ,struct lcd_device*) ;

void devm_lcd_device_unregister(struct device *dev, struct lcd_device *ld)
{
 int rc;

 rc = devres_release(dev, devm_lcd_device_release,
    devm_lcd_device_match, ld);
 WARN_ON(rc);
}
