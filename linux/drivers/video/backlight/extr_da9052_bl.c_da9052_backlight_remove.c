
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9052_bl {int state; scalar_t__ brightness; } ;
struct backlight_device {int dummy; } ;


 int DA9052_WLEDS_OFF ;
 struct da9052_bl* bl_get_data (struct backlight_device*) ;
 int da9052_adjust_wled_brightness (struct da9052_bl*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da9052_backlight_remove(struct platform_device *pdev)
{
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct da9052_bl *wleds = bl_get_data(bl);

 wleds->brightness = 0;
 wleds->state = DA9052_WLEDS_OFF;
 da9052_adjust_wled_brightness(wleds);

 return 0;
}
