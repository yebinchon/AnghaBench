
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct hx8357_data {int state; } ;


 struct hx8357_data* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int hx8357_get_power(struct lcd_device *lcdev)
{
 struct hx8357_data *lcd = lcd_get_data(lcdev);

 return lcd->state;
}
