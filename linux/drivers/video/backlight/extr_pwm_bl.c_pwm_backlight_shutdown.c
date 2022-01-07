
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_bl_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct backlight_device {int dummy; } ;


 struct pwm_bl_data* bl_get_data (struct backlight_device*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;
 int pwm_backlight_power_off (struct pwm_bl_data*) ;

__attribute__((used)) static void pwm_backlight_shutdown(struct platform_device *pdev)
{
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct pwm_bl_data *pb = bl_get_data(bl);

 pwm_backlight_power_off(pb);
}
