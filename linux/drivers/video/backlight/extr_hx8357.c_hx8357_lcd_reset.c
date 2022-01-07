
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct hx8357_data {int reset; } ;


 int gpio_set_value (int ,int) ;
 struct hx8357_data* lcd_get_data (struct lcd_device*) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hx8357_lcd_reset(struct lcd_device *lcdev)
{
 struct hx8357_data *lcd = lcd_get_data(lcdev);


 gpio_set_value(lcd->reset, 1);
 usleep_range(10000, 12000);
 gpio_set_value(lcd->reset, 0);
 usleep_range(10000, 12000);
 gpio_set_value(lcd->reset, 1);


 msleep(120);
}
