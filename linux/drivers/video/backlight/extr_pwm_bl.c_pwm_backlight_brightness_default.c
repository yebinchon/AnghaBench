
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_pwm_backlight_data {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static
int pwm_backlight_brightness_default(struct device *dev,
         struct platform_pwm_backlight_data *data,
         unsigned int period)
{
 return -ENODEV;
}
