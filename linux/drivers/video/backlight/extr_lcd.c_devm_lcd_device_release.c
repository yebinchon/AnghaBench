
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct device {int dummy; } ;


 int lcd_device_unregister (struct lcd_device*) ;

__attribute__((used)) static void devm_lcd_device_release(struct device *dev, void *res)
{
 struct lcd_device *lcd = *(struct lcd_device **)res;

 lcd_device_unregister(lcd);
}
