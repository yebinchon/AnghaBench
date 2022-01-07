
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_bl_data {int pwm; scalar_t__ legacy; int (* exit ) (int *) ;} ;
struct platform_device {int dev; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct pwm_bl_data* bl_get_data (struct backlight_device*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;
 int pwm_backlight_power_off (struct pwm_bl_data*) ;
 int pwm_free (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static int pwm_backlight_remove(struct platform_device *pdev)
{
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct pwm_bl_data *pb = bl_get_data(bl);

 backlight_device_unregister(bl);
 pwm_backlight_power_off(pb);

 if (pb->exit)
  pb->exit(&pdev->dev);
 if (pb->legacy)
  pwm_free(pb->pwm);

 return 0;
}
