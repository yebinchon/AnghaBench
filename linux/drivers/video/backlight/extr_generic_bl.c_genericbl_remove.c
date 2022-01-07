
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ brightness; scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; } ;


 int backlight_update_status (struct backlight_device*) ;
 int dev_info (int *,char*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int genericbl_remove(struct platform_device *pdev)
{
 struct backlight_device *bd = platform_get_drvdata(pdev);

 bd->props.power = 0;
 bd->props.brightness = 0;
 backlight_update_status(bd);

 dev_info(&pdev->dev, "Generic Backlight Driver Unloaded\n");
 return 0;
}
