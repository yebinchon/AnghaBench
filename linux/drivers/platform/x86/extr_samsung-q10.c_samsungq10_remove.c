
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int samsungq10_remove(struct platform_device *pdev)
{

 struct backlight_device *bd = platform_get_drvdata(pdev);

 backlight_device_unregister(bd);

 return 0;
}
