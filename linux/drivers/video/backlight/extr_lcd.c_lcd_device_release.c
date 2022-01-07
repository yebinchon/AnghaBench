
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct lcd_device*) ;
 struct lcd_device* to_lcd_device (struct device*) ;

__attribute__((used)) static void lcd_device_release(struct device *dev)
{
 struct lcd_device *ld = to_lcd_device(dev);
 kfree(ld);
}
