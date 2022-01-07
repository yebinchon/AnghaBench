
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ power; scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int hp680bl_send_intensity (struct backlight_device*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hp680bl_remove(struct platform_device *pdev)
{
 struct backlight_device *bd = platform_get_drvdata(pdev);

 bd->props.brightness = 0;
 bd->props.power = 0;
 hp680bl_send_intensity(bd);

 return 0;
}
